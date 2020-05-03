module "azurerm_route_table" {
  source = "./modules/azurerm/d/azurerm_route_table"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
