module "azurerm_spring_cloud_service" {
  source = "./modules/azurerm/d/azurerm_spring_cloud_service"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
