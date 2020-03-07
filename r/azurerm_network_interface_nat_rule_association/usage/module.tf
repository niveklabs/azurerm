module "azurerm_network_interface_nat_rule_association" {
  source = "./azurerm/r/azurerm_network_interface_nat_rule_association"

  ip_configuration_name = null
  nat_rule_id           = null
  network_interface_id  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
