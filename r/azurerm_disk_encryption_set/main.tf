terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_disk_encryption_set" "this" {
  key_vault_key_id    = var.key_vault_key_id
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
    }
  }

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

