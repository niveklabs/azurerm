module "azurerm_key_vault_access_policy" {
  source = "./modules/azurerm/d/azurerm_key_vault_access_policy"

  name = null

  timeouts = [{
    read = null
  }]
}
