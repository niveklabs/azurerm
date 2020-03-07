module "azurerm_client_config" {
  source = "./azurerm/d/azurerm_client_config"


  timeouts = [{
    read = null
  }]
}
