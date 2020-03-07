module "azurerm_api_management_api_version_set" {
  source = "./azurerm/d/azurerm_api_management_api_version_set"

  api_management_name = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
