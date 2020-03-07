module "azurerm_api_management_group" {
  source = "./azurerm/r/azurerm_api_management_group"

  api_management_name = null
  description         = null
  display_name        = null
  external_id         = null
  name                = null
  resource_group_name = null
  type                = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
