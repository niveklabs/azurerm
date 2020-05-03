module "azurerm_app_configuration" {
  source = "./modules/azurerm/d/azurerm_app_configuration"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
