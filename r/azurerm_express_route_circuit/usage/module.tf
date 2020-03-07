module "azurerm_express_route_circuit" {
  source = "./azurerm/r/azurerm_express_route_circuit"

  allow_classic_operations = null
  bandwidth_in_mbps        = null
  location                 = null
  name                     = null
  peering_location         = null
  resource_group_name      = null
  service_provider_name    = null
  tags                     = {}

  sku = [{
    family = null
    tier   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
