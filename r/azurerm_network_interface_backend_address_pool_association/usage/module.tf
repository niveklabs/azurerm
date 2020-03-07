module "azurerm_network_interface_backend_address_pool_association" {
  source = "./azurerm/r/azurerm_network_interface_backend_address_pool_association"

  backend_address_pool_id = null
  ip_configuration_name   = null
  network_interface_id    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
