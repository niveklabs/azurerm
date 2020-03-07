module "azurerm_bot_web_app" {
  source = "./azurerm/r/azurerm_bot_web_app"

  developer_app_insights_api_key        = null
  developer_app_insights_application_id = null
  developer_app_insights_key            = null
  display_name                          = null
  endpoint                              = null
  location                              = null
  luis_app_ids                          = []
  luis_key                              = null
  microsoft_app_id                      = null
  name                                  = null
  resource_group_name                   = null
  sku                                   = null
  tags                                  = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
