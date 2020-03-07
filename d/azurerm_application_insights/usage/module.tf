module "azurerm_application_insights" {
  source = "./azurerm/d/azurerm_application_insights"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
