module "azurerm_application_insights" {
  source = "./modules/azurerm/d/azurerm_application_insights"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
