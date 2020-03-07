module "azurerm_private_dns_zone_virtual_network_link" {
  source = "./azurerm/r/azurerm_private_dns_zone_virtual_network_link"

  name                  = null
  private_dns_zone_name = null
  registration_enabled  = null
  resource_group_name   = null
  tags                  = {}
  virtual_network_id    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
