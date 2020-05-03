module "azurerm_batch_certificate" {
  source = "./modules/azurerm/d/azurerm_batch_certificate"

  account_name        = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
