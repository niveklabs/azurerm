module "azurerm_iotcentral_application" {
  source = "./modules/azurerm/r/azurerm_iotcentral_application"

  display_name        = null
  location            = null
  name                = null
  resource_group_name = null
  sku                 = null
  sub_domain          = null
  tags                = {}
  template            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
