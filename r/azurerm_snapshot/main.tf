terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_snapshot" "this" {
  create_option       = var.create_option
  disk_size_gb        = var.disk_size_gb
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  source_resource_id  = var.source_resource_id
  source_uri          = var.source_uri
  storage_account_id  = var.storage_account_id
  tags                = var.tags

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

