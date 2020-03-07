module "azurerm_api_management_identity_provider_twitter" {
  source = "./azurerm/r/azurerm_api_management_identity_provider_twitter"

  api_key             = null
  api_management_name = null
  api_secret_key      = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
