module "azurerm_api_management_product_group" {
  source = "./azurerm/r/azurerm_api_management_product_group"

  api_management_name = null
  group_name          = null
  product_id          = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
