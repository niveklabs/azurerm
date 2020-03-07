module "azurerm_api_management_identity_provider_google" {
  source = "./azurerm/r/azurerm_api_management_identity_provider_google"

  api_management_name = null
  client_id           = null
  client_secret       = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
