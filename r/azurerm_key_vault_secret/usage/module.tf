module "azurerm_key_vault_secret" {
  source = "./azurerm/r/azurerm_key_vault_secret"

  content_type    = null
  expiration_date = null
  key_vault_id    = null
  name            = null
  not_before_date = null
  tags            = {}
  value           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
