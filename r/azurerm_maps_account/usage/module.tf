module "azurerm_maps_account" {
  source = "./azurerm/r/azurerm_maps_account"

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
