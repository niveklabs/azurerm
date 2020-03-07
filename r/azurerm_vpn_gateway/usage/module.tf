module "azurerm_vpn_gateway" {
  source = "./azurerm/r/azurerm_vpn_gateway"

  location            = null
  name                = null
  resource_group_name = null
  scale_unit          = null
  tags                = {}
  virtual_hub_id      = null

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
