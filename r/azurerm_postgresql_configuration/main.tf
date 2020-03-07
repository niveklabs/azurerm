terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_postgresql_configuration" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  value               = var.value

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

