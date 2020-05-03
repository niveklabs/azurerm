module "azurerm_api_management_named_value" {
  source = "./modules/azurerm/r/azurerm_api_management_named_value"

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
