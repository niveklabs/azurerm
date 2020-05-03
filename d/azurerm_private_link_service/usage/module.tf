module "azurerm_private_link_service" {
  source = "./modules/azurerm/d/azurerm_private_link_service"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
