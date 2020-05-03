module "azurerm_batch_account" {
  source = "./modules/azurerm/d/azurerm_batch_account"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
