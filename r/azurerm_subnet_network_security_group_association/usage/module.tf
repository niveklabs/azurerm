module "azurerm_subnet_network_security_group_association" {
  source = "./azurerm/r/azurerm_subnet_network_security_group_association"

  network_security_group_id = null
  subnet_id                 = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
