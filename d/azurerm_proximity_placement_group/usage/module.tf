module "azurerm_proximity_placement_group" {
  source = "./azurerm/d/azurerm_proximity_placement_group"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
