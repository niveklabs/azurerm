terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_hpc_cache_nfs_target" "this" {
  cache_name          = var.cache_name
  name                = var.name
  resource_group_name = var.resource_group_name
  target_host_name    = var.target_host_name
  usage_model         = var.usage_model

  dynamic "namespace_junction" {
    for_each = var.namespace_junction
    content {
      namespace_path = namespace_junction.value["namespace_path"]
      nfs_export     = namespace_junction.value["nfs_export"]
      target_path    = namespace_junction.value["target_path"]
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

