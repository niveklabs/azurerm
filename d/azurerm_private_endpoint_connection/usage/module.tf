module "azurerm_private_endpoint_connection" {
  source = "./modules/azurerm/d/azurerm_private_endpoint_connection"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
