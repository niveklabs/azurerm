terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_cosmosdb_gremlin_graph" "this" {
  account_name        = var.account_name
  database_name       = var.database_name
  name                = var.name
  partition_key_path  = var.partition_key_path
  resource_group_name = var.resource_group_name
  throughput          = var.throughput

  dynamic "conflict_resolution_policy" {
    for_each = var.conflict_resolution_policy
    content {
      conflict_resolution_path      = conflict_resolution_policy.value["conflict_resolution_path"]
      conflict_resolution_procedure = conflict_resolution_policy.value["conflict_resolution_procedure"]
      mode                          = conflict_resolution_policy.value["mode"]
    }
  }

  dynamic "index_policy" {
    for_each = var.index_policy
    content {
      automatic      = index_policy.value["automatic"]
      excluded_paths = index_policy.value["excluded_paths"]
      included_paths = index_policy.value["included_paths"]
      indexing_mode  = index_policy.value["indexing_mode"]
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

  dynamic "unique_key" {
    for_each = var.unique_key
    content {
      paths = unique_key.value["paths"]
    }
  }

}

