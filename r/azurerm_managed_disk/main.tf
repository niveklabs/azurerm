terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_managed_disk" "this" {
  create_option          = var.create_option
  disk_encryption_set_id = var.disk_encryption_set_id
  disk_iops_read_write   = var.disk_iops_read_write
  disk_mbps_read_write   = var.disk_mbps_read_write
  disk_size_gb           = var.disk_size_gb
  image_reference_id     = var.image_reference_id
  location               = var.location
  name                   = var.name
  os_type                = var.os_type
  resource_group_name    = var.resource_group_name
  source_resource_id     = var.source_resource_id
  source_uri             = var.source_uri
  storage_account_id     = var.storage_account_id
  storage_account_type   = var.storage_account_type
  tags                   = var.tags
  zones                  = var.zones

  dynamic "encryption_settings" {
    for_each = var.encryption_settings
    content {
      enabled = encryption_settings.value["enabled"]

      dynamic "disk_encryption_key" {
        for_each = encryption_settings.value.disk_encryption_key
        content {
          secret_url      = disk_encryption_key.value["secret_url"]
          source_vault_id = disk_encryption_key.value["source_vault_id"]
        }
      }

      dynamic "key_encryption_key" {
        for_each = encryption_settings.value.key_encryption_key
        content {
          key_url         = key_encryption_key.value["key_url"]
          source_vault_id = key_encryption_key.value["source_vault_id"]
        }
      }

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

