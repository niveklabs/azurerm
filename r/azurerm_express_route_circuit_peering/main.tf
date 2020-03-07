terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_express_route_circuit_peering" "this" {
  express_route_circuit_name    = var.express_route_circuit_name
  peer_asn                      = var.peer_asn
  peering_type                  = var.peering_type
  primary_peer_address_prefix   = var.primary_peer_address_prefix
  resource_group_name           = var.resource_group_name
  secondary_peer_address_prefix = var.secondary_peer_address_prefix
  shared_key                    = var.shared_key
  vlan_id                       = var.vlan_id

  dynamic "microsoft_peering_config" {
    for_each = var.microsoft_peering_config
    content {
      advertised_public_prefixes = microsoft_peering_config.value["advertised_public_prefixes"]
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

