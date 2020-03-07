module "azurerm_batch_account" {
  source = "./azurerm/r/azurerm_batch_account"

  location             = null
  name                 = null
  pool_allocation_mode = null
  resource_group_name  = null
  storage_account_id   = null
  tags                 = {}

  key_vault_reference = [{
    id  = null
    url = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
