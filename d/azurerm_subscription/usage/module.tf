module "azurerm_subscription" {
  source = "./azurerm/d/azurerm_subscription"

  subscription_id = null

  timeouts = [{
    read = null
  }]
}
