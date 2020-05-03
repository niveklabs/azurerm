module "azurerm_sql_server" {
  source = "./modules/azurerm/d/azurerm_sql_server"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
