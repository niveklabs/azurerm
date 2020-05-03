module "azurerm_app_configuration" {
  source = "./modules/azurerm/r/azurerm_app_configuration"

  location            = null
  name                = null
  resource_group_name = null
  sku                 = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
