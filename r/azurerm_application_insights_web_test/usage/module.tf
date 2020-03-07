module "azurerm_application_insights_web_test" {
  source = "./azurerm/r/azurerm_application_insights_web_test"

  application_insights_id = null
  configuration           = null
  description             = null
  enabled                 = null
  frequency               = null
  geo_locations           = []
  kind                    = null
  location                = null
  name                    = null
  resource_group_name     = null
  retry_enabled           = null
  tags                    = {}
  timeout                 = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
