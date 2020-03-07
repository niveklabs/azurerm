module "azurerm_automation_account" {
  source = "./azurerm/r/azurerm_automation_account"

  location            = null
  name                = null
  resource_group_name = null
  sku_name            = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
