terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_packet_capture" "this" {
  maximum_bytes_per_packet  = var.maximum_bytes_per_packet
  maximum_bytes_per_session = var.maximum_bytes_per_session
  maximum_capture_duration  = var.maximum_capture_duration
  name                      = var.name
  network_watcher_name      = var.network_watcher_name
  resource_group_name       = var.resource_group_name
  target_resource_id        = var.target_resource_id

  dynamic "filter" {
    for_each = var.filter
    content {
      local_ip_address  = filter.value["local_ip_address"]
      local_port        = filter.value["local_port"]
      protocol          = filter.value["protocol"]
      remote_ip_address = filter.value["remote_ip_address"]
      remote_port       = filter.value["remote_port"]
    }
  }

  dynamic "storage_location" {
    for_each = var.storage_location
    content {
      file_path          = storage_location.value["file_path"]
      storage_account_id = storage_location.value["storage_account_id"]
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

