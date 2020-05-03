module "azurerm_subscriptions" {
  source = "./modules/azurerm/d/azurerm_subscriptions"

  display_name_contains = null
  display_name_prefix   = null

  timeouts = [{
    read = null
  }]
}
