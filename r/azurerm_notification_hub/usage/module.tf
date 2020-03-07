module "azurerm_notification_hub" {
  source = "./azurerm/r/azurerm_notification_hub"

  location            = null
  name                = null
  namespace_name      = null
  resource_group_name = null

  apns_credential = [{
    application_mode = null
    bundle_id        = null
    key_id           = null
    team_id          = null
    token            = null
  }]

  gcm_credential = [{
    api_key = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
