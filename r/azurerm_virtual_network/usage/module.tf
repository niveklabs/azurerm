module "azurerm_virtual_network" {
  source = "./modules/azurerm/r/azurerm_virtual_network"

  address_space       = []
  dns_servers         = []
  location            = null
  name                = null
  resource_group_name = null
  subnet = [{
    address_prefix = null
    id             = null
    name           = null
    security_group = null
  }]
  tags = {}

  ddos_protection_plan = [{
    enable = null
    id     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
