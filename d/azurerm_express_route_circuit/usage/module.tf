module "azurerm_express_route_circuit" {
  source = "./modules/azurerm/d/azurerm_express_route_circuit"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
