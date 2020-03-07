module "azurerm_storage_container" {
  source = "./azurerm/d/azurerm_storage_container"

  metadata             = {}
  name                 = null
  storage_account_name = null

  timeouts = [{
    read = null
  }]
}
