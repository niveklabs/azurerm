terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventhub" "this" {
  message_retention   = var.message_retention
  name                = var.name
  namespace_name      = var.namespace_name
  partition_count     = var.partition_count
  resource_group_name = var.resource_group_name

  dynamic "capture_description" {
    for_each = var.capture_description
    content {
      enabled             = capture_description.value["enabled"]
      encoding            = capture_description.value["encoding"]
      interval_in_seconds = capture_description.value["interval_in_seconds"]
      size_limit_in_bytes = capture_description.value["size_limit_in_bytes"]
      skip_empty_archives = capture_description.value["skip_empty_archives"]

      dynamic "destination" {
        for_each = capture_description.value.destination
        content {
          archive_name_format = destination.value["archive_name_format"]
          blob_container_name = destination.value["blob_container_name"]
          name                = destination.value["name"]
          storage_account_id  = destination.value["storage_account_id"]
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

