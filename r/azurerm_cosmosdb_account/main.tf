terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_cosmosdb_account" "this" {
  enable_automatic_failover         = var.enable_automatic_failover
  enable_multiple_write_locations   = var.enable_multiple_write_locations
  ip_range_filter                   = var.ip_range_filter
  is_virtual_network_filter_enabled = var.is_virtual_network_filter_enabled
  kind                              = var.kind
  location                          = var.location
  name                              = var.name
  offer_type                        = var.offer_type
  resource_group_name               = var.resource_group_name
  tags                              = var.tags

  dynamic "capabilities" {
    for_each = var.capabilities
    content {
      name = capabilities.value["name"]
    }
  }

  dynamic "consistency_policy" {
    for_each = var.consistency_policy
    content {
      consistency_level       = consistency_policy.value["consistency_level"]
      max_interval_in_seconds = consistency_policy.value["max_interval_in_seconds"]
      max_staleness_prefix    = consistency_policy.value["max_staleness_prefix"]
    }
  }

  dynamic "geo_location" {
    for_each = var.geo_location
    content {
      failover_priority = geo_location.value["failover_priority"]
      location          = geo_location.value["location"]
      prefix            = geo_location.value["prefix"]
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

  dynamic "virtual_network_rule" {
    for_each = var.virtual_network_rule
    content {
      id = virtual_network_rule.value["id"]
    }
  }

}

