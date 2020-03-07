terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "this" {
  backend_address_pool_id = var.backend_address_pool_id
  ip_configuration_name   = var.ip_configuration_name
  network_interface_id    = var.network_interface_id

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

