terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_network_interface_security_group_association" "this" {
  network_interface_id      = var.network_interface_id
  network_security_group_id = var.network_security_group_id

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

