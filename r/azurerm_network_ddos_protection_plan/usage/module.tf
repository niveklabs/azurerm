module "azurerm_network_ddos_protection_plan" {
  source = "./azurerm/r/azurerm_network_ddos_protection_plan"

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
