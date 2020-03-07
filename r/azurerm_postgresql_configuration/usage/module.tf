module "azurerm_postgresql_configuration" {
  source = "./azurerm/r/azurerm_postgresql_configuration"

  name                = null
  resource_group_name = null
  server_name         = null
  value               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
