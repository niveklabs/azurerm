module "azurerm_app_service_certificate" {
  source = "./azurerm/d/azurerm_app_service_certificate"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
