module "azurerm_network_interface_security_group_association" {
  source = "./azurerm/r/azurerm_network_interface_security_group_association"

  network_interface_id      = null
  network_security_group_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
