module "azurerm_bot_connection" {
  source = "./azurerm/r/azurerm_bot_connection"

  bot_name              = null
  client_id             = null
  client_secret         = null
  location              = null
  name                  = null
  parameters            = {}
  resource_group_name   = null
  scopes                = null
  service_provider_name = null
  tags                  = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
