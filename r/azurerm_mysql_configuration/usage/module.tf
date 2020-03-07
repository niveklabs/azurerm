module "azurerm_mysql_configuration" {
  source = "./azurerm/r/azurerm_mysql_configuration"

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
