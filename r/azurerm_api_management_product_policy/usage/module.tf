module "azurerm_api_management_product_policy" {
  source = "./azurerm/r/azurerm_api_management_product_policy"

  api_management_name = null
  product_id          = null
  resource_group_name = null
  xml_content         = null
  xml_link            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
