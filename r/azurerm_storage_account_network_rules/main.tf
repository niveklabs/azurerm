terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_account_network_rules" "this" {
  bypass                     = var.bypass
  default_action             = var.default_action
  ip_rules                   = var.ip_rules
  resource_group_name        = var.resource_group_name
  storage_account_name       = var.storage_account_name
  virtual_network_subnet_ids = var.virtual_network_subnet_ids

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

