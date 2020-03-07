module "azurerm_storage_management_policy" {
  source = "./azurerm/d/azurerm_storage_management_policy"

  storage_account_id = null

  timeouts = [{
    read = null
  }]
}
