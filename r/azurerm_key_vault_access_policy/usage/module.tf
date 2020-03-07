module "azurerm_key_vault_access_policy" {
  source = "./azurerm/r/azurerm_key_vault_access_policy"

  application_id          = null
  certificate_permissions = []
  key_permissions         = []
  key_vault_id            = null
  object_id               = null
  secret_permissions      = []
  storage_permissions     = []
  tenant_id               = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
