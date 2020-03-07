module "azurerm_bot_channel_email" {
  source = "./azurerm/r/azurerm_bot_channel_email"

  bot_name            = null
  email_address       = null
  email_password      = null
  location            = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
