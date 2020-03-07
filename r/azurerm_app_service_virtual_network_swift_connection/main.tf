terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_virtual_network_swift_connection" "this" {
  app_service_id = var.app_service_id
  subnet_id      = var.subnet_id

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

