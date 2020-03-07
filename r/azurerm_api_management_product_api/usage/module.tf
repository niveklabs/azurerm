module "azurerm_api_management_product_api" {
  source = "./azurerm/r/azurerm_api_management_product_api"

  api_management_name = null
  api_name            = null
  product_id          = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
