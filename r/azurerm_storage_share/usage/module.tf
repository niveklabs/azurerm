module "azurerm_storage_share" {
  source = "./azurerm/r/azurerm_storage_share"

  metadata             = {}
  name                 = null
  quota                = null
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
