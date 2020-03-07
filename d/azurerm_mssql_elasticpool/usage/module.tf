module "azurerm_mssql_elasticpool" {
  source = "./azurerm/d/azurerm_mssql_elasticpool"

  name                = null
  resource_group_name = null
  server_name         = null

  timeouts = [{
    read = null
  }]
}
