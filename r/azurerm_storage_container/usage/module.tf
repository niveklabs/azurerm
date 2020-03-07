module "azurerm_storage_container" {
  source = "./azurerm/r/azurerm_storage_container"

  container_access_type = null
  metadata              = {}
  name                  = null
  storage_account_name  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
