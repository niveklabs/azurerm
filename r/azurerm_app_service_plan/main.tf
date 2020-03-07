terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_app_service_plan" "this" {
  app_service_environment_id   = var.app_service_environment_id
  is_xenon                     = var.is_xenon
  kind                         = var.kind
  location                     = var.location
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  name                         = var.name
  per_site_scaling             = var.per_site_scaling
  reserved                     = var.reserved
  resource_group_name          = var.resource_group_name
  tags                         = var.tags

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      size     = sku.value["size"]
      tier     = sku.value["tier"]
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

