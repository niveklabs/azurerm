module "azurerm_storage_table" {
  source = "./azurerm/r/azurerm_storage_table"

  name                 = null
  storage_account_name = null

  acl = [{
    access_policy = [{
      expiry      = null
      permissions = null
      start       = null
    }]
    id = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
