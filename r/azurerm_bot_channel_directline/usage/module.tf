module "azurerm_bot_channel_directline" {
  source = "./modules/azurerm/r/azurerm_bot_channel_directline"

  bot_name            = null
  location            = null
  resource_group_name = null

  site = [{
    enabled                         = null
    enhanced_authentication_enabled = null
    id                              = null
    key                             = null
    key2                            = null
    name                            = null
    trusted_origins                 = []
    v1_allowed                      = null
    v3_allowed                      = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
