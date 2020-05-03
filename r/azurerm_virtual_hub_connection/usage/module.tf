module "azurerm_virtual_hub_connection" {
  source = "./modules/azurerm/r/azurerm_virtual_hub_connection"

  hub_to_vitual_network_traffic_allowed          = null
  internet_security_enabled                      = null
  name                                           = null
  remote_virtual_network_id                      = null
  virtual_hub_id                                 = null
  vitual_network_to_hub_gateways_traffic_allowed = null

  timeouts = [{
    create = null
    delete = null
    read   = null
  }]
}
