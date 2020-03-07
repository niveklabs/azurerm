module "azurerm_sql_active_directory_administrator" {
  source = "./azurerm/r/azurerm_sql_active_directory_administrator"

  login               = null
  object_id           = null
  resource_group_name = null
  server_name         = null
  tenant_id           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
