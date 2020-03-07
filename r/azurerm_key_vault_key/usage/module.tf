module "azurerm_key_vault_key" {
  source = "./azurerm/r/azurerm_key_vault_key"

  curve           = null
  expiration_date = null
  key_opts        = []
  key_size        = null
  key_type        = null
  key_vault_id    = null
  name            = null
  not_before_date = null
  tags            = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
