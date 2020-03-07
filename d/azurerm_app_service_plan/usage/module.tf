module "azurerm_app_service_plan" {
  source = "./azurerm/d/azurerm_app_service_plan"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
