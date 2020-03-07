terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_image" "this" {
  hyper_v_generation        = var.hyper_v_generation
  location                  = var.location
  name                      = var.name
  resource_group_name       = var.resource_group_name
  source_virtual_machine_id = var.source_virtual_machine_id
  tags                      = var.tags
  zone_resilient            = var.zone_resilient

  dynamic "data_disk" {
    for_each = var.data_disk
    content {
      blob_uri        = data_disk.value["blob_uri"]
      caching         = data_disk.value["caching"]
      lun             = data_disk.value["lun"]
      managed_disk_id = data_disk.value["managed_disk_id"]
      size_gb         = data_disk.value["size_gb"]
    }
  }

  dynamic "os_disk" {
    for_each = var.os_disk
    content {
      blob_uri        = os_disk.value["blob_uri"]
      caching         = os_disk.value["caching"]
      managed_disk_id = os_disk.value["managed_disk_id"]
      os_state        = os_disk.value["os_state"]
      os_type         = os_disk.value["os_type"]
      size_gb         = os_disk.value["size_gb"]
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

