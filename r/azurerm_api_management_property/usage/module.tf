module "azurerm_api_management_property" {
  source = "./azurerm/r/azurerm_api_management_property"

  api_management_name = null
  display_name        = null
  name                = null
  resource_group_name = null
  secret              = null
  tags                = []
  value               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
