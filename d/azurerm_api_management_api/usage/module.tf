module "azurerm_api_management_api" {
  source = "./azurerm/d/azurerm_api_management_api"

  api_management_name = null
  name                = null
  resource_group_name = null
  revision            = null

  timeouts = [{
    read = null
  }]
}
