terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_network_gateway" "this" {
  active_active                    = var.active_active
  default_local_network_gateway_id = var.default_local_network_gateway_id
  enable_bgp                       = var.enable_bgp
  generation                       = var.generation
  location                         = var.location
  name                             = var.name
  resource_group_name              = var.resource_group_name
  sku                              = var.sku
  tags                             = var.tags
  type                             = var.type
  vpn_type                         = var.vpn_type

  dynamic "bgp_settings" {
    for_each = var.bgp_settings
    content {
      asn             = bgp_settings.value["asn"]
      peer_weight     = bgp_settings.value["peer_weight"]
      peering_address = bgp_settings.value["peering_address"]
    }
  }

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name                          = ip_configuration.value["name"]
      private_ip_address_allocation = ip_configuration.value["private_ip_address_allocation"]
      public_ip_address_id          = ip_configuration.value["public_ip_address_id"]
      subnet_id                     = ip_configuration.value["subnet_id"]
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

  dynamic "vpn_client_configuration" {
    for_each = var.vpn_client_configuration
    content {
      address_space         = vpn_client_configuration.value["address_space"]
      radius_server_address = vpn_client_configuration.value["radius_server_address"]
      radius_server_secret  = vpn_client_configuration.value["radius_server_secret"]
      vpn_client_protocols  = vpn_client_configuration.value["vpn_client_protocols"]

      dynamic "revoked_certificate" {
        for_each = vpn_client_configuration.value.revoked_certificate
        content {
          name       = revoked_certificate.value["name"]
          thumbprint = revoked_certificate.value["thumbprint"]
        }
      }

      dynamic "root_certificate" {
        for_each = vpn_client_configuration.value.root_certificate
        content {
          name             = root_certificate.value["name"]
          public_cert_data = root_certificate.value["public_cert_data"]
        }
      }

    }
  }

}

