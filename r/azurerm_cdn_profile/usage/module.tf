module "azurerm_cdn_profile" {
  source = "./azurerm/r/azurerm_cdn_profile"

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
