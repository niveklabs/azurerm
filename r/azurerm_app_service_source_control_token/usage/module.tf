module "azurerm_app_service_source_control_token" {
  source = "./azurerm/r/azurerm_app_service_source_control_token"

  token        = null
  token_secret = null
  type         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
