module "azurerm_network_ddos_protection_plan" {
  source = "./azurerm/d/azurerm_network_ddos_protection_plan"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
