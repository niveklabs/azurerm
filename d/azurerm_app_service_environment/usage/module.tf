module "azurerm_app_service_environment" {
  source = "./azurerm/d/azurerm_app_service_environment"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
