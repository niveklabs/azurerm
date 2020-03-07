module "azurerm_storage_account_customer_managed_key" {
  source = "./azurerm/r/azurerm_storage_account_customer_managed_key"

  key_name           = null
  key_vault_id       = null
  key_version        = null
  storage_account_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
