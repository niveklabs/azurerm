terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_platform_image" "this" {
  location  = var.location
  offer     = var.offer
  publisher = var.publisher
  sku       = var.sku

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

