module "azurerm_automation_module" {
  source = "./azurerm/r/azurerm_automation_module"

  automation_account_name = null
  name                    = null
  resource_group_name     = null

  module_link = [{
    hash = [{
      algorithm = null
      value     = null
    }]
    uri = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
