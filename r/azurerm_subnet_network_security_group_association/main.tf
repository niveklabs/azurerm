terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_subnet_network_security_group_association" "this" {
  network_security_group_id = var.network_security_group_id
  subnet_id                 = var.subnet_id

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

