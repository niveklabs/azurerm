module "azurerm_postgresql_server" {
  source = "./azurerm/d/azurerm_postgresql_server"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
