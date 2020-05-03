module "azurerm_client_config" {
  source = "./modules/azurerm/d/azurerm_client_config"


  timeouts = [{
    read = null
  }]
}
