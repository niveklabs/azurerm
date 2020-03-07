terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_vpn_server_configuration" "this" {
  location                 = var.location
  name                     = var.name
  resource_group_name      = var.resource_group_name
  tags                     = var.tags
  vpn_authentication_types = var.vpn_authentication_types
  vpn_protocols            = var.vpn_protocols

  dynamic "azure_active_directory_authentication" {
    for_each = var.azure_active_directory_authentication
    content {
      audience = azure_active_directory_authentication.value["audience"]
      issuer   = azure_active_directory_authentication.value["issuer"]
      tenant   = azure_active_directory_authentication.value["tenant"]
    }
  }

  dynamic "client_revoked_certificate" {
    for_each = var.client_revoked_certificate
    content {
      name       = client_revoked_certificate.value["name"]
      thumbprint = client_revoked_certificate.value["thumbprint"]
    }
  }

  dynamic "client_root_certificate" {
    for_each = var.client_root_certificate
    content {
      name             = client_root_certificate.value["name"]
      public_cert_data = client_root_certificate.value["public_cert_data"]
    }
  }

  dynamic "ipsec_policy" {
    for_each = var.ipsec_policy
    content {
      dh_group               = ipsec_policy.value["dh_group"]
      ike_encryption         = ipsec_policy.value["ike_encryption"]
      ike_integrity          = ipsec_policy.value["ike_integrity"]
      ipsec_encryption       = ipsec_policy.value["ipsec_encryption"]
      ipsec_integrity        = ipsec_policy.value["ipsec_integrity"]
      pfs_group              = ipsec_policy.value["pfs_group"]
      sa_data_size_kilobytes = ipsec_policy.value["sa_data_size_kilobytes"]
      sa_lifetime_seconds    = ipsec_policy.value["sa_lifetime_seconds"]
    }
  }

  dynamic "radius_server" {
    for_each = var.radius_server
    content {
      address = radius_server.value["address"]
      secret  = radius_server.value["secret"]

      dynamic "client_root_certificate" {
        for_each = radius_server.value.client_root_certificate
        content {
          name       = client_root_certificate.value["name"]
          thumbprint = client_root_certificate.value["thumbprint"]
        }
      }

      dynamic "server_root_certificate" {
        for_each = radius_server.value.server_root_certificate
        content {
          name             = server_root_certificate.value["name"]
          public_cert_data = server_root_certificate.value["public_cert_data"]
        }
      }

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

