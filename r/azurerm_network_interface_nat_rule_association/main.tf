terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_interface_nat_rule_association" "this" {
  ip_configuration_name = var.ip_configuration_name
  nat_rule_id           = var.nat_rule_id
  network_interface_id  = var.network_interface_id

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

