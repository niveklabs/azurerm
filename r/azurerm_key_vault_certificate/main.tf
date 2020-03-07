terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_key_vault_certificate" "this" {
  key_vault_id = var.key_vault_id
  name         = var.name
  tags         = var.tags

  dynamic "certificate" {
    for_each = var.certificate
    content {
      contents = certificate.value["contents"]
      password = certificate.value["password"]
    }
  }

  dynamic "certificate_policy" {
    for_each = var.certificate_policy
    content {

      dynamic "issuer_parameters" {
        for_each = certificate_policy.value.issuer_parameters
        content {
          name = issuer_parameters.value["name"]
        }
      }

      dynamic "key_properties" {
        for_each = certificate_policy.value.key_properties
        content {
          exportable = key_properties.value["exportable"]
          key_size   = key_properties.value["key_size"]
          key_type   = key_properties.value["key_type"]
          reuse_key  = key_properties.value["reuse_key"]
        }
      }

      dynamic "lifetime_action" {
        for_each = certificate_policy.value.lifetime_action
        content {

          dynamic "action" {
            for_each = lifetime_action.value.action
            content {
              action_type = action.value["action_type"]
            }
          }

          dynamic "trigger" {
            for_each = lifetime_action.value.trigger
            content {
              days_before_expiry  = trigger.value["days_before_expiry"]
              lifetime_percentage = trigger.value["lifetime_percentage"]
            }
          }

        }
      }

      dynamic "secret_properties" {
        for_each = certificate_policy.value.secret_properties
        content {
          content_type = secret_properties.value["content_type"]
        }
      }

      dynamic "x509_certificate_properties" {
        for_each = certificate_policy.value.x509_certificate_properties
        content {
          extended_key_usage = x509_certificate_properties.value["extended_key_usage"]
          key_usage          = x509_certificate_properties.value["key_usage"]
          subject            = x509_certificate_properties.value["subject"]
          validity_in_months = x509_certificate_properties.value["validity_in_months"]

          dynamic "subject_alternative_names" {
            for_each = x509_certificate_properties.value.subject_alternative_names
            content {
              dns_names = subject_alternative_names.value["dns_names"]
              emails    = subject_alternative_names.value["emails"]
              upns      = subject_alternative_names.value["upns"]
            }
          }

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
    }
  }

}

