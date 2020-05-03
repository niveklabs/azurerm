module "azurerm_platform_image" {
  source = "./modules/azurerm/d/azurerm_platform_image"

  location  = null
  offer     = null
  publisher = null
  sku       = null

  timeouts = [{
    read = null
  }]
}
