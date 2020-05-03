module "azurerm_spring_cloud_app" {
  source = "./modules/azurerm/r/azurerm_spring_cloud_app"

  name                = null
  resource_group_name = null
  service_name        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
  }]
}
