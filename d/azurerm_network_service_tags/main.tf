terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

data "azurerm_network_service_tags" "this" {
  location        = var.location
  location_filter = var.location_filter
  service         = var.service

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

