module "azurerm_sql_database" {
  source = "./modules/azurerm/d/azurerm_sql_database"

  name                = null
  resource_group_name = null
  server_name         = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
