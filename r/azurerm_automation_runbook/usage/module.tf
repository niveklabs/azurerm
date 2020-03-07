module "azurerm_automation_runbook" {
  source = "./azurerm/r/azurerm_automation_runbook"

  automation_account_name = null
  content                 = null
  description             = null
  location                = null
  log_progress            = null
  log_verbose             = null
  name                    = null
  resource_group_name     = null
  runbook_type            = null
  tags                    = {}

  publish_content_link = [{
    hash = [{
      algorithm = null
      value     = null
    }]
    uri     = null
    version = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
