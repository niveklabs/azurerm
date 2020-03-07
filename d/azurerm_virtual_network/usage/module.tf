module "azurerm_virtual_network" {
  source = "./azurerm/d/azurerm_virtual_network"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
