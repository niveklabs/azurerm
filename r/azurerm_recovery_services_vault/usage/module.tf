module "azurerm_recovery_services_vault" {
  source = "./azurerm/r/azurerm_recovery_services_vault"

  location            = null
  name                = null
  resource_group_name = null
  sku                 = null
  soft_delete_enabled = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
