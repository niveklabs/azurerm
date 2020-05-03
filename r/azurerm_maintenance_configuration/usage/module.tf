module "azurerm_maintenance_configuration" {
  source = "./modules/azurerm/r/azurerm_maintenance_configuration"

  location            = null
  name                = null
  resource_group_name = null
  scope               = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
