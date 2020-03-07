module "azurerm_maps_account" {
  source = "./azurerm/d/azurerm_maps_account"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
