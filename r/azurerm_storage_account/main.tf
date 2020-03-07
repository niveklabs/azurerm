terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_account" "this" {
  access_tier               = var.access_tier
  account_kind              = var.account_kind
  account_replication_type  = var.account_replication_type
  account_tier              = var.account_tier
  enable_https_traffic_only = var.enable_https_traffic_only
  is_hns_enabled            = var.is_hns_enabled
  location                  = var.location
  name                      = var.name
  resource_group_name       = var.resource_group_name
  tags                      = var.tags

  dynamic "blob_properties" {
    for_each = var.blob_properties
    content {

      dynamic "cors_rule" {
        for_each = blob_properties.value.cors_rule
        content {
          allowed_headers    = cors_rule.value["allowed_headers"]
          allowed_methods    = cors_rule.value["allowed_methods"]
          allowed_origins    = cors_rule.value["allowed_origins"]
          exposed_headers    = cors_rule.value["exposed_headers"]
          max_age_in_seconds = cors_rule.value["max_age_in_seconds"]
        }
      }

      dynamic "delete_retention_policy" {
        for_each = blob_properties.value.delete_retention_policy
        content {
          days = delete_retention_policy.value["days"]
        }
      }

    }
  }

  dynamic "custom_domain" {
    for_each = var.custom_domain
    content {
      name          = custom_domain.value["name"]
      use_subdomain = custom_domain.value["use_subdomain"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
    }
  }

  dynamic "network_rules" {
    for_each = var.network_rules
    content {
      bypass                     = network_rules.value["bypass"]
      default_action             = network_rules.value["default_action"]
      ip_rules                   = network_rules.value["ip_rules"]
      virtual_network_subnet_ids = network_rules.value["virtual_network_subnet_ids"]
    }
  }

  dynamic "queue_properties" {
    for_each = var.queue_properties
    content {

      dynamic "cors_rule" {
        for_each = queue_properties.value.cors_rule
        content {
          allowed_headers    = cors_rule.value["allowed_headers"]
          allowed_methods    = cors_rule.value["allowed_methods"]
          allowed_origins    = cors_rule.value["allowed_origins"]
          exposed_headers    = cors_rule.value["exposed_headers"]
          max_age_in_seconds = cors_rule.value["max_age_in_seconds"]
        }
      }

      dynamic "hour_metrics" {
        for_each = queue_properties.value.hour_metrics
        content {
          enabled               = hour_metrics.value["enabled"]
          include_apis          = hour_metrics.value["include_apis"]
          retention_policy_days = hour_metrics.value["retention_policy_days"]
          version               = hour_metrics.value["version"]
        }
      }

      dynamic "logging" {
        for_each = queue_properties.value.logging
        content {
          delete                = logging.value["delete"]
          read                  = logging.value["read"]
          retention_policy_days = logging.value["retention_policy_days"]
          version               = logging.value["version"]
          write                 = logging.value["write"]
        }
      }

      dynamic "minute_metrics" {
        for_each = queue_properties.value.minute_metrics
        content {
          enabled               = minute_metrics.value["enabled"]
          include_apis          = minute_metrics.value["include_apis"]
          retention_policy_days = minute_metrics.value["retention_policy_days"]
          version               = minute_metrics.value["version"]
        }
      }

    }
  }

  dynamic "static_website" {
    for_each = var.static_website
    content {
      error_404_document = static_website.value["error_404_document"]
      index_document     = static_website.value["index_document"]
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

