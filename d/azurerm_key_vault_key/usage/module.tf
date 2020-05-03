module "azurerm_key_vault_key" {
  source = "./modules/azurerm/d/azurerm_key_vault_key"

  key_vault_id = null
  name         = null

  timeouts = [{
    read = null
  }]
}
