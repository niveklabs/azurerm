module "azurerm_network_interface" {
  source = "./modules/azurerm/d/azurerm_network_interface"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
