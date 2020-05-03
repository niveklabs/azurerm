module "azurerm_storage_queue" {
  source = "./modules/azurerm/r/azurerm_storage_queue"

  metadata             = {}
  name                 = null
  storage_account_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
