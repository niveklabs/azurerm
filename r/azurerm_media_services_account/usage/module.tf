module "azurerm_media_services_account" {
  source = "./azurerm/r/azurerm_media_services_account"

  location            = null
  name                = null
  resource_group_name = null

  storage_account = [{
    id         = null
    is_primary = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
