terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub" "this" {
  event_hub_partition_count   = var.event_hub_partition_count
  event_hub_retention_in_days = var.event_hub_retention_in_days
  location                    = var.location
  name                        = var.name
  resource_group_name         = var.resource_group_name
  tags                        = var.tags

  dynamic "endpoint" {
    for_each = var.endpoint
    content {
      batch_frequency_in_seconds = endpoint.value["batch_frequency_in_seconds"]
      connection_string          = endpoint.value["connection_string"]
      container_name             = endpoint.value["container_name"]
      encoding                   = endpoint.value["encoding"]
      file_name_format           = endpoint.value["file_name_format"]
      max_chunk_size_in_bytes    = endpoint.value["max_chunk_size_in_bytes"]
      name                       = endpoint.value["name"]
      type                       = endpoint.value["type"]
    }
  }

  dynamic "fallback_route" {
    for_each = var.fallback_route
    content {
      condition      = fallback_route.value["condition"]
      enabled        = fallback_route.value["enabled"]
      endpoint_names = fallback_route.value["endpoint_names"]
      source         = fallback_route.value["source"]
    }
  }

  dynamic "file_upload" {
    for_each = var.file_upload
    content {
      connection_string  = file_upload.value["connection_string"]
      container_name     = file_upload.value["container_name"]
      default_ttl        = file_upload.value["default_ttl"]
      lock_duration      = file_upload.value["lock_duration"]
      max_delivery_count = file_upload.value["max_delivery_count"]
      notifications      = file_upload.value["notifications"]
      sas_ttl            = file_upload.value["sas_ttl"]
    }
  }

  dynamic "ip_filter_rule" {
    for_each = var.ip_filter_rule
    content {
      action  = ip_filter_rule.value["action"]
      ip_mask = ip_filter_rule.value["ip_mask"]
      name    = ip_filter_rule.value["name"]
    }
  }

  dynamic "route" {
    for_each = var.route
    content {
      condition      = route.value["condition"]
      enabled        = route.value["enabled"]
      endpoint_names = route.value["endpoint_names"]
      name           = route.value["name"]
      source         = route.value["source"]
    }
  }

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      name     = sku.value["name"]
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

