module "azurerm_route_table" {
  source = "./azurerm/r/azurerm_route_table"

  disable_bgp_route_propagation = null
  location                      = null
  name                          = null
  resource_group_name           = null
  route = [{
    address_prefix         = null
    name                   = null
    next_hop_in_ip_address = null
    next_hop_type          = null
  }]
  tags = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
