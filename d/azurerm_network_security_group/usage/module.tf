module "azurerm_network_security_group" {
  source = "./azurerm/d/azurerm_network_security_group"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
