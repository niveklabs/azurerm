module "azurerm_virtual_network_gateway_connection" {
  source = "./azurerm/r/azurerm_virtual_network_gateway_connection"

  authorization_key                  = null
  connection_protocol                = null
  enable_bgp                         = null
  express_route_circuit_id           = null
  express_route_gateway_bypass       = null
  local_network_gateway_id           = null
  location                           = null
  name                               = null
  peer_virtual_network_gateway_id    = null
  resource_group_name                = null
  routing_weight                     = null
  shared_key                         = null
  tags                               = {}
  type                               = null
  use_policy_based_traffic_selectors = null
  virtual_network_gateway_id         = null

  ipsec_policy = [{
    dh_group         = null
    ike_encryption   = null
    ike_integrity    = null
    ipsec_encryption = null
    ipsec_integrity  = null
    pfs_group        = null
    sa_datasize      = null
    sa_lifetime      = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
