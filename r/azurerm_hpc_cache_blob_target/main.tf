terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_hpc_cache_blob_target" "this" {
  cache_name           = var.cache_name
  name                 = var.name
  namespace_path       = var.namespace_path
  resource_group_name  = var.resource_group_name
  storage_container_id = var.storage_container_id

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

