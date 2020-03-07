module "azurerm_automation_dsc_nodeconfiguration" {
  source = "./azurerm/r/azurerm_automation_dsc_nodeconfiguration"

  automation_account_name = null
  content_embedded        = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
