terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_mysql_virtual_network_rule" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  subnet_id           = var.subnet_id

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

