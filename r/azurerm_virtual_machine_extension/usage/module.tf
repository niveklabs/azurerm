module "azurerm_virtual_machine_extension" {
  source = "./azurerm/r/azurerm_virtual_machine_extension"

  auto_upgrade_minor_version = null
  name                       = null
  protected_settings         = null
  publisher                  = null
  settings                   = null
  tags                       = {}
  type                       = null
  type_handler_version       = null
  virtual_machine_id         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
