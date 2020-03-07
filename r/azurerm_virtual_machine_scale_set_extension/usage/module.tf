module "azurerm_virtual_machine_scale_set_extension" {
  source = "./azurerm/r/azurerm_virtual_machine_scale_set_extension"

  auto_upgrade_minor_version   = null
  force_update_tag             = null
  name                         = null
  protected_settings           = null
  provision_after_extensions   = []
  publisher                    = null
  settings                     = null
  type                         = null
  type_handler_version         = null
  virtual_machine_scale_set_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
