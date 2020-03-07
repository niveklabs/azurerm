terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_cosmosdb_mongo_collection" "this" {
  account_name        = var.account_name
  database_name       = var.database_name
  default_ttl_seconds = var.default_ttl_seconds
  name                = var.name
  resource_group_name = var.resource_group_name
  shard_key           = var.shard_key
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

}

