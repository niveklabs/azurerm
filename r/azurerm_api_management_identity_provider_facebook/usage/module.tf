module "azurerm_api_management_identity_provider_facebook" {
  source = "./azurerm/r/azurerm_api_management_identity_provider_facebook"

  api_management_name = null
  app_id              = null
  app_secret          = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
