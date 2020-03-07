module "azurerm_api_management_api_schema" {
  source = "./azurerm/r/azurerm_api_management_api_schema"

  api_management_name = null
  api_name            = null
  content_type        = null
  resource_group_name = null
  schema_id           = null
  value               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
