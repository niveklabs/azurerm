module "azurerm_app_service_certificate_order" {
  source = "./modules/azurerm/d/azurerm_app_service_certificate_order"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
