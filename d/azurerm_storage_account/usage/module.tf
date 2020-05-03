module "azurerm_storage_account" {
  source = "./modules/azurerm/d/azurerm_storage_account"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
