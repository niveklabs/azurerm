module "azurerm_security_center_subscription_pricing" {
  source = "./azurerm/r/azurerm_security_center_subscription_pricing"

  tier = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
