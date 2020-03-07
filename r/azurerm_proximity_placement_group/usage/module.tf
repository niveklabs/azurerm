module "azurerm_proximity_placement_group" {
  source = "./azurerm/r/azurerm_proximity_placement_group"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
