module "azurerm_local_network_gateway" {
  source = "./azurerm/r/azurerm_local_network_gateway"

  address_space       = []
  gateway_address     = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  bgp_settings = [{
    asn                 = null
    bgp_peering_address = null
    peer_weight         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
