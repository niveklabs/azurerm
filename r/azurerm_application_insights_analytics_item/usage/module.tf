module "azurerm_application_insights_analytics_item" {
  source = "./azurerm/r/azurerm_application_insights_analytics_item"

  application_insights_id = null
  content                 = null
  function_alias          = null
  name                    = null
  scope                   = null
  type                    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
