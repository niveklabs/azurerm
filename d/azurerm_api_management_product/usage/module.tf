module "azurerm_api_management_product" {
  source = "./azurerm/d/azurerm_api_management_product"

  api_management_name = null
  product_id          = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
