module "azurerm_virtual_machine_data_disk_attachment" {
  source = "./azurerm/r/azurerm_virtual_machine_data_disk_attachment"

  caching                   = null
  create_option             = null
  lun                       = null
  managed_disk_id           = null
  virtual_machine_id        = null
  write_accelerator_enabled = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
