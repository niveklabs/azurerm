terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_cosmosdb_sql_container" "this" {
  account_name        = var.account_name
  database_name       = var.database_name
  default_ttl         = var.default_ttl
  name                = var.name
  partition_key_path  = var.partition_key_path
  resource_group_name = var.resource_group_name
  throughput          = var.throughput

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

