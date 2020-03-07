module "azurerm_marketplace_agreement" {
  source = "./azurerm/r/azurerm_marketplace_agreement"

  offer     = null
  plan      = null
  publisher = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
