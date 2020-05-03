terraform {
  required_providers {
    azurerm = ">= 2.1.0"
  }
}

resource "azurerm_hpc_cache" "this" {
  cache_size_in_gb    = var.cache_size_in_gb
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  subnet_id           = var.subnet_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
    }
  }

}

