terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_backup_protected_file_share" "this" {
  backup_policy_id          = var.backup_policy_id
  recovery_vault_name       = var.recovery_vault_name
  resource_group_name       = var.resource_group_name
  source_file_share_name    = var.source_file_share_name
  source_storage_account_id = var.source_storage_account_id

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

