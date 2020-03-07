module "azurerm_subnet" {
  source = "./azurerm/r/azurerm_subnet"

  address_prefix                                 = null
  enforce_private_link_endpoint_network_policies = null
  enforce_private_link_service_network_policies  = null
  name                                           = null
  resource_group_name                            = null
  service_endpoints                              = []
  virtual_network_name                           = null

  delegation = [{
    name = null
    service_delegation = [{
      actions = []
      name    = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
