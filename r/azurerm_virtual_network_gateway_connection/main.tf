terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_network_gateway_connection" "this" {
  authorization_key                  = var.authorization_key
  connection_protocol                = var.connection_protocol
  enable_bgp                         = var.enable_bgp
  express_route_circuit_id           = var.express_route_circuit_id
  express_route_gateway_bypass       = var.express_route_gateway_bypass
  local_network_gateway_id           = var.local_network_gateway_id
  location                           = var.location
  name                               = var.name
  peer_virtual_network_gateway_id    = var.peer_virtual_network_gateway_id
  resource_group_name                = var.resource_group_name
  routing_weight                     = var.routing_weight
  shared_key                         = var.shared_key
  tags                               = var.tags
  type                               = var.type
  use_policy_based_traffic_selectors = var.use_policy_based_traffic_selectors
  virtual_network_gateway_id         = var.virtual_network_gateway_id

  dynamic "ipsec_policy" {
    for_each = var.ipsec_policy
    content {
      dh_group         = ipsec_policy.value["dh_group"]
      ike_encryption   = ipsec_policy.value["ike_encryption"]
      ike_integrity    = ipsec_policy.value["ike_integrity"]
      ipsec_encryption = ipsec_policy.value["ipsec_encryption"]
      ipsec_integrity  = ipsec_policy.value["ipsec_integrity"]
      pfs_group        = ipsec_policy.value["pfs_group"]
      sa_datasize      = ipsec_policy.value["sa_datasize"]
      sa_lifetime      = ipsec_policy.value["sa_lifetime"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

