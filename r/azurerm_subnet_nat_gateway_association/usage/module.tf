module "azurerm_subnet_nat_gateway_association" {
  source = "./azurerm/r/azurerm_subnet_nat_gateway_association"

  nat_gateway_id = null
  subnet_id      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
