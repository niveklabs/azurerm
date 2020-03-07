module "azurerm_network_security_rule" {
  source = "./azurerm/r/azurerm_network_security_rule"

  access                                     = null
  description                                = null
  destination_address_prefix                 = null
  destination_address_prefixes               = []
  destination_application_security_group_ids = []
  destination_port_range                     = null
  destination_port_ranges                    = []
  direction                                  = null
  name                                       = null
  network_security_group_name                = null
  priority                                   = null
  protocol                                   = null
  resource_group_name                        = null
  source_address_prefix                      = null
  source_address_prefixes                    = []
  source_application_security_group_ids      = []
  source_port_range                          = null
  source_port_ranges                         = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
