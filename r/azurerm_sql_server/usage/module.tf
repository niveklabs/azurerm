module "azurerm_sql_server" {
  source = "./azurerm/r/azurerm_sql_server"

  administrator_login          = null
  administrator_login_password = null
  location                     = null
  name                         = null
  resource_group_name          = null
  tags                         = {}
  version                      = null

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
