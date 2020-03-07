module "azurerm_api_management_group" {
  source = "./azurerm/d/azurerm_api_management_group"

  api_management_name = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
