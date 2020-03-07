terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_shared_image_version" "this" {
  exclude_from_latest = var.exclude_from_latest
  gallery_name        = var.gallery_name
  image_name          = var.image_name
  location            = var.location
  managed_image_id    = var.managed_image_id
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "target_region" {
    for_each = var.target_region
    content {
      name                   = target_region.value["name"]
      regional_replica_count = target_region.value["regional_replica_count"]
      storage_account_type   = target_region.value["storage_account_type"]
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

