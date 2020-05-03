module "azurerm_powerbi_embedded" {
  source = "./modules/azurerm/r/azurerm_powerbi_embedded"

  administrators      = []
  location            = null
  name                = null
  resource_group_name = null
  sku_name            = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
