module "azurerm_point_to_site_vpn_gateway" {
  source = "./azurerm/r/azurerm_point_to_site_vpn_gateway"

  location                    = null
  name                        = null
  resource_group_name         = null
  scale_unit                  = null
  tags                        = {}
  virtual_hub_id              = null
  vpn_server_configuration_id = null

  connection_configuration = [{
    name = null
    vpn_client_address_pool = [{
      address_prefixes = []
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
