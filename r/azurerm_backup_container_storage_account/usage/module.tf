module "azurerm_backup_container_storage_account" {
  source = "./modules/azurerm/r/azurerm_backup_container_storage_account"

  recovery_vault_name = null
  resource_group_name = null
  storage_account_id  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
