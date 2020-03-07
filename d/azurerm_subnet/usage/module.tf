module "azurerm_subnet" {
  source = "./azurerm/d/azurerm_subnet"

  name                 = null
  resource_group_name  = null
  virtual_network_name = null

  timeouts = [{
    read = null
  }]
}
