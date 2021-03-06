terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_marketplace_agreement" "this" {
  offer     = var.offer
  plan      = var.plan
  publisher = var.publisher

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

