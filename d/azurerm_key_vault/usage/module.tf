module "azurerm_key_vault" {
  source = "./azurerm/d/azurerm_key_vault"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
