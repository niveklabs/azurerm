module "azurerm_express_route_circuit_peering" {
  source = "./azurerm/r/azurerm_express_route_circuit_peering"

  express_route_circuit_name    = null
  peer_asn                      = null
  peering_type                  = null
  primary_peer_address_prefix   = null
  resource_group_name           = null
  secondary_peer_address_prefix = null
  shared_key                    = null
  vlan_id                       = null

  microsoft_peering_config = [{
    advertised_public_prefixes = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
