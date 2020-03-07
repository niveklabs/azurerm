terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "this" {
  caching                   = var.caching
  create_option             = var.create_option
  lun                       = var.lun
  managed_disk_id           = var.managed_disk_id
  virtual_machine_id        = var.virtual_machine_id
  write_accelerator_enabled = var.write_accelerator_enabled

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

