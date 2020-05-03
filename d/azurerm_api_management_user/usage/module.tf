module "azurerm_api_management_user" {
  source = "./modules/azurerm/d/azurerm_api_management_user"

  api_management_name = null
  resource_group_name = null
  user_id             = null

  timeouts = [{
    read = null
  }]
}
