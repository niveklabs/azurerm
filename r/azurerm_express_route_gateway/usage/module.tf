module "azurerm_express_route_gateway" {
  source = "./azurerm/r/azurerm_express_route_gateway"

  location            = null
  name                = null
  resource_group_name = null
  scale_units         = null
  tags                = {}
  virtual_hub_id      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
