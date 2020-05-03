module "azurerm_key_vault_secret" {
  source = "./modules/azurerm/d/azurerm_key_vault_secret"

  key_vault_id = null
  name         = null

  timeouts = [{
    read = null
  }]
}
