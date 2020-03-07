module "azurerm_api_management_group_user" {
  source = "./azurerm/r/azurerm_api_management_group_user"

  api_management_name = null
  group_name          = null
  resource_group_name = null
  user_id             = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
