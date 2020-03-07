terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_kusto_database" "this" {
  cluster_name        = var.cluster_name
  hot_cache_period    = var.hot_cache_period
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  soft_delete_period  = var.soft_delete_period

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

