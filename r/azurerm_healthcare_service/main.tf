terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_healthcare_service" "this" {
  access_policy_object_ids = var.access_policy_object_ids
  cosmosdb_throughput      = var.cosmosdb_throughput
  kind                     = var.kind
  location                 = var.location
  name                     = var.name
  resource_group_name      = var.resource_group_name
  tags                     = var.tags

  dynamic "authentication_configuration" {
    for_each = var.authentication_configuration
    content {
      audience            = authentication_configuration.value["audience"]
      authority           = authentication_configuration.value["authority"]
      smart_proxy_enabled = authentication_configuration.value["smart_proxy_enabled"]
    }
  }

  dynamic "cors_configuration" {
    for_each = var.cors_configuration
    content {
      allow_credentials  = cors_configuration.value["allow_credentials"]
      allowed_headers    = cors_configuration.value["allowed_headers"]
      allowed_methods    = cors_configuration.value["allowed_methods"]
      allowed_origins    = cors_configuration.value["allowed_origins"]
      max_age_in_seconds = cors_configuration.value["max_age_in_seconds"]
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

