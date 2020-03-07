module "azurerm_sql_server" {
  source = "./azurerm/d/azurerm_sql_server"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
