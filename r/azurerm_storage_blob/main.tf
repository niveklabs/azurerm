terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_blob" "this" {
  access_tier            = var.access_tier
  content_type           = var.content_type
  metadata               = var.metadata
  name                   = var.name
  parallelism            = var.parallelism
  size                   = var.size
  source                 = var.source
  source_content         = var.source_content
  source_uri             = var.source_uri
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = var.type

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

