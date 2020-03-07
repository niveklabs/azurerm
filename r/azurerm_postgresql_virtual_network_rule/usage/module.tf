module "azurerm_postgresql_virtual_network_rule" {
  source = "./azurerm/r/azurerm_postgresql_virtual_network_rule"

  ignore_missing_vnet_service_endpoint = null
  name                                 = null
  resource_group_name                  = null
  server_name                          = null
  subnet_id                            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
