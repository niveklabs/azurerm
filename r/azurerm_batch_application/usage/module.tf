module "azurerm_batch_application" {
  source = "./azurerm/r/azurerm_batch_application"

  account_name        = null
  allow_updates       = null
  default_version     = null
  display_name        = null
  name                = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
