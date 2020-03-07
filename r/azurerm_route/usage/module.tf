module "azurerm_route" {
  source = "./azurerm/r/azurerm_route"

  address_prefix         = null
  name                   = null
  next_hop_in_ip_address = null
  next_hop_type          = null
  resource_group_name    = null
  route_table_name       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
