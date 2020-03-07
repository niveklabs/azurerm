terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_stream_analytics_output_blob" "this" {
  date_format               = var.date_format
  name                      = var.name
  path_pattern              = var.path_pattern
  resource_group_name       = var.resource_group_name
  storage_account_key       = var.storage_account_key
  storage_account_name      = var.storage_account_name
  storage_container_name    = var.storage_container_name
  stream_analytics_job_name = var.stream_analytics_job_name
  time_format               = var.time_format

  dynamic "serialization" {
    for_each = var.serialization
    content {
      encoding        = serialization.value["encoding"]
      field_delimiter = serialization.value["field_delimiter"]
      format          = serialization.value["format"]
      type            = serialization.value["type"]
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

