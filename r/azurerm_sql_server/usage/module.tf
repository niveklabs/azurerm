module "azurerm_sql_server" {
  source = "./modules/azurerm/r/azurerm_sql_server"

  administrator_login          = null
  administrator_login_password = null
  location                     = null
  name                         = null
  resource_group_name          = null
  tags                         = {}
  version                      = null

  extended_auditing_policy = [{
    retention_in_days                       = null
    storage_account_access_key              = null
    storage_account_access_key_is_secondary = null
    storage_endpoint                        = null
  }]

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
