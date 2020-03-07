module "azurerm_bot_channel_slack" {
  source = "./azurerm/r/azurerm_bot_channel_slack"

  bot_name            = null
  client_id           = null
  client_secret       = null
  landing_page_url    = null
  location            = null
  resource_group_name = null
  verification_token  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
