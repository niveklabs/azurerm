module "azurerm_management_lock" {
  source = "./azurerm/r/azurerm_management_lock"

  lock_level = null
  name       = null
  notes      = null
  scope      = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
