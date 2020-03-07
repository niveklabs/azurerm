module "azurerm_app_service" {
  source = "./azurerm/d/azurerm_app_service"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
