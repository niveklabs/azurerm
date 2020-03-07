module "azurerm_automation_dsc_configuration" {
  source = "./azurerm/r/azurerm_automation_dsc_configuration"

  automation_account_name = null
  content_embedded        = null
  description             = null
  location                = null
  log_verbose             = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
