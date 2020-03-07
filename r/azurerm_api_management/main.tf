terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management" "this" {
  location                  = var.location
  name                      = var.name
  notification_sender_email = var.notification_sender_email
  policy                    = var.policy
  publisher_email           = var.publisher_email
  publisher_name            = var.publisher_name
  resource_group_name       = var.resource_group_name
  sku_name                  = var.sku_name
  tags                      = var.tags

  dynamic "additional_location" {
    for_each = var.additional_location
    content {
      location = additional_location.value["location"]
    }
  }

  dynamic "certificate" {
    for_each = var.certificate
    content {
      certificate_password = certificate.value["certificate_password"]
      encoded_certificate  = certificate.value["encoded_certificate"]
      store_name           = certificate.value["store_name"]
    }
  }

  dynamic "hostname_configuration" {
    for_each = var.hostname_configuration
    content {

      dynamic "management" {
        for_each = hostname_configuration.value.management
        content {
          certificate                  = management.value["certificate"]
          certificate_password         = management.value["certificate_password"]
          host_name                    = management.value["host_name"]
          key_vault_id                 = management.value["key_vault_id"]
          negotiate_client_certificate = management.value["negotiate_client_certificate"]
        }
      }

      dynamic "portal" {
        for_each = hostname_configuration.value.portal
        content {
          certificate                  = portal.value["certificate"]
          certificate_password         = portal.value["certificate_password"]
          host_name                    = portal.value["host_name"]
          key_vault_id                 = portal.value["key_vault_id"]
          negotiate_client_certificate = portal.value["negotiate_client_certificate"]
        }
      }

      dynamic "proxy" {
        for_each = hostname_configuration.value.proxy
        content {
          certificate                  = proxy.value["certificate"]
          certificate_password         = proxy.value["certificate_password"]
          default_ssl_binding          = proxy.value["default_ssl_binding"]
          host_name                    = proxy.value["host_name"]
          key_vault_id                 = proxy.value["key_vault_id"]
          negotiate_client_certificate = proxy.value["negotiate_client_certificate"]
        }
      }

      dynamic "scm" {
        for_each = hostname_configuration.value.scm
        content {
          certificate                  = scm.value["certificate"]
          certificate_password         = scm.value["certificate_password"]
          host_name                    = scm.value["host_name"]
          key_vault_id                 = scm.value["key_vault_id"]
          negotiate_client_certificate = scm.value["negotiate_client_certificate"]
        }
      }

    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
    }
  }

  dynamic "protocols" {
    for_each = var.protocols
    content {
      enable_http2 = protocols.value["enable_http2"]
    }
  }

  dynamic "security" {
    for_each = var.security
    content {
      enable_backend_ssl30      = security.value["enable_backend_ssl30"]
      enable_backend_tls10      = security.value["enable_backend_tls10"]
      enable_backend_tls11      = security.value["enable_backend_tls11"]
      enable_frontend_ssl30     = security.value["enable_frontend_ssl30"]
      enable_frontend_tls10     = security.value["enable_frontend_tls10"]
      enable_frontend_tls11     = security.value["enable_frontend_tls11"]
      enable_triple_des_ciphers = security.value["enable_triple_des_ciphers"]
    }
  }

  dynamic "sign_in" {
    for_each = var.sign_in
    content {
      enabled = sign_in.value["enabled"]
    }
  }

  dynamic "sign_up" {
    for_each = var.sign_up
    content {
      enabled = sign_up.value["enabled"]

      dynamic "terms_of_service" {
        for_each = sign_up.value.terms_of_service
        content {
          consent_required = terms_of_service.value["consent_required"]
          enabled          = terms_of_service.value["enabled"]
          text             = terms_of_service.value["text"]
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

