terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_management_policy" "this" {
  storage_account_id = var.storage_account_id

  dynamic "rule" {
    for_each = var.rule
    content {
      enabled = rule.value["enabled"]
      name    = rule.value["name"]

      dynamic "actions" {
        for_each = rule.value.actions
        content {

          dynamic "base_blob" {
            for_each = actions.value.base_blob
            content {
              delete_after_days_since_modification_greater_than          = base_blob.value["delete_after_days_since_modification_greater_than"]
              tier_to_archive_after_days_since_modification_greater_than = base_blob.value["tier_to_archive_after_days_since_modification_greater_than"]
              tier_to_cool_after_days_since_modification_greater_than    = base_blob.value["tier_to_cool_after_days_since_modification_greater_than"]
            }
          }

          dynamic "snapshot" {
            for_each = actions.value.snapshot
            content {
              delete_after_days_since_creation_greater_than = snapshot.value["delete_after_days_since_creation_greater_than"]
            }
          }

        }
      }

      dynamic "filters" {
        for_each = rule.value.filters
        content {
          blob_types   = filters.value["blob_types"]
          prefix_match = filters.value["prefix_match"]
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

