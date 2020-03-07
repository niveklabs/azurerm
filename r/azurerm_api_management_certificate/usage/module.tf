module "azurerm_api_management_certificate" {
  source = "./azurerm/r/azurerm_api_management_certificate"

  api_management_name = null
  data                = null
  name                = null
  password            = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
