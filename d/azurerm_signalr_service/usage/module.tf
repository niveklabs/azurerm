module "azurerm_signalr_service" {
  source = "./azurerm/d/azurerm_signalr_service"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
