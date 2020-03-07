module "azurerm_storage_share_directory" {
  source = "./azurerm/r/azurerm_storage_share_directory"

  metadata             = {}
  name                 = null
  share_name           = null
  storage_account_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
