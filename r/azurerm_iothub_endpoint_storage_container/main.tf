terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub_endpoint_storage_container" "this" {
  batch_frequency_in_seconds = var.batch_frequency_in_seconds
  connection_string          = var.connection_string
  container_name             = var.container_name
  encoding                   = var.encoding
  file_name_format           = var.file_name_format
  iothub_name                = var.iothub_name
  max_chunk_size_in_bytes    = var.max_chunk_size_in_bytes
  name                       = var.name
  resource_group_name        = var.resource_group_name

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

