module "azurerm_subnet_route_table_association" {
  source = "./azurerm/r/azurerm_subnet_route_table_association"

  route_table_id = null
  subnet_id      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
