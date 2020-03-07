module "azurerm_virtual_hub" {
  source = "./azurerm/r/azurerm_virtual_hub"

  address_prefix      = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}
  virtual_wan_id      = null

  route = [{
    address_prefixes    = []
    next_hop_ip_address = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
