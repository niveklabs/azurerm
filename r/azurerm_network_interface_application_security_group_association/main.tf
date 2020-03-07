terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_interface_application_security_group_association" "this" {
  application_security_group_id = var.application_security_group_id
  network_interface_id          = var.network_interface_id

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

