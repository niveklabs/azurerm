module "azurerm_maintenance_configuration" {
  source = "./modules/azurerm/d/azurerm_maintenance_configuration"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
