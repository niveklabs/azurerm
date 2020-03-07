module "azurerm_api_management_diagnostic" {
  source = "./azurerm/r/azurerm_api_management_diagnostic"

  api_management_name = null
  enabled             = null
  identifier          = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
