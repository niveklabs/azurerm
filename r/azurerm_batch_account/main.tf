terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_batch_account" "this" {
  location             = var.location
  name                 = var.name
  pool_allocation_mode = var.pool_allocation_mode
  resource_group_name  = var.resource_group_name
  storage_account_id   = var.storage_account_id
  tags                 = var.tags

  dynamic "key_vault_reference" {
    for_each = var.key_vault_reference
    content {
      id  = key_vault_reference.value["id"]
      url = key_vault_reference.value["url"]
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

