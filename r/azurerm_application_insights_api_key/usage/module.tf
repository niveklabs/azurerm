module "azurerm_application_insights_api_key" {
  source = "./azurerm/r/azurerm_application_insights_api_key"

  application_insights_id = null
  name                    = null
  read_permissions        = []
  write_permissions       = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
