terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_network_security_group" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  security_rule       = var.security_rule
  tags                = var.tags

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

