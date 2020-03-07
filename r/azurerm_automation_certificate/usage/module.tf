module "azurerm_automation_certificate" {
  source = "./azurerm/r/azurerm_automation_certificate"

  automation_account_name = null
  base64                  = null
  description             = null
  name                    = null
  resource_group_name     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
