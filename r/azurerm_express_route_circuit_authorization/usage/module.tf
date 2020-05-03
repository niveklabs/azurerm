module "azurerm_express_route_circuit_authorization" {
  source = "./modules/azurerm/r/azurerm_express_route_circuit_authorization"

  express_route_circuit_name = null
  name                       = null
  resource_group_name        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
