module "azurerm_virtual_network_peering" {
  source = "./azurerm/r/azurerm_virtual_network_peering"

  allow_forwarded_traffic      = null
  allow_gateway_transit        = null
  allow_virtual_network_access = null
  name                         = null
  remote_virtual_network_id    = null
  resource_group_name          = null
  use_remote_gateways          = null
  virtual_network_name         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
