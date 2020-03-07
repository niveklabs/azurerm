module "azurerm_api_management_product" {
  source = "./azurerm/r/azurerm_api_management_product"

  api_management_name   = null
  approval_required     = null
  description           = null
  display_name          = null
  product_id            = null
  published             = null
  resource_group_name   = null
  subscription_required = null
  subscriptions_limit   = null
  terms                 = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
