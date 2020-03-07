terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_backup_container_storage_account" "this" {
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name
  storage_account_id  = var.storage_account_id

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

