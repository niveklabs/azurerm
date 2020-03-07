module "azurerm_automation_credential" {
  source = "./azurerm/r/azurerm_automation_credential"

  automation_account_name = null
  description             = null
  name                    = null
  password                = null
  resource_group_name     = null
  username                = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
