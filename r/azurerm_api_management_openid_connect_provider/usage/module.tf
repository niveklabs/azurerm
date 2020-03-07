module "azurerm_api_management_openid_connect_provider" {
  source = "./azurerm/r/azurerm_api_management_openid_connect_provider"

  api_management_name = null
  client_id           = null
  client_secret       = null
  description         = null
  display_name        = null
  metadata_endpoint   = null
  name                = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
