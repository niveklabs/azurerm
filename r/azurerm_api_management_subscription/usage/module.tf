module "azurerm_api_management_subscription" {
  source = "./azurerm/r/azurerm_api_management_subscription"

  api_management_name = null
  display_name        = null
  primary_key         = null
  product_id          = null
  resource_group_name = null
  secondary_key       = null
  state               = null
  subscription_id     = null
  user_id             = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
