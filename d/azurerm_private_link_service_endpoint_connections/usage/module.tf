module "azurerm_private_link_service_endpoint_connections" {
  source = "./modules/azurerm/d/azurerm_private_link_service_endpoint_connections"

  resource_group_name = null
  service_id          = null

  timeouts = [{
    read = null
  }]
}
