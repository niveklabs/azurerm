module "azurerm_backup_protected_file_share" {
  source = "./azurerm/r/azurerm_backup_protected_file_share"

  backup_policy_id          = null
  recovery_vault_name       = null
  resource_group_name       = null
  source_file_share_name    = null
  source_storage_account_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
