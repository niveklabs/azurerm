module "azurerm_api_management_api_version_set" {
  source = "./azurerm/r/azurerm_api_management_api_version_set"

  api_management_name = null
  description         = null
  display_name        = null
  name                = null
  resource_group_name = null
  version_header_name = null
  version_query_name  = null
  versioning_scheme   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
