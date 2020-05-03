module "azurerm_network_service_tags" {
  source = "./modules/azurerm/d/azurerm_network_service_tags"

  location        = null
  location_filter = null
  service         = null

  timeouts = [{
    read = null
  }]
}
