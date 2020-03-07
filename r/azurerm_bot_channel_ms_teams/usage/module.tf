module "azurerm_bot_channel_ms_teams" {
  source = "./azurerm/r/azurerm_bot_channel_ms_teams"

  bot_name            = null
  calling_web_hook    = null
  enable_calling      = null
  location            = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
