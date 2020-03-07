module "azurerm_disk_encryption_set" {
  source = "./azurerm/r/azurerm_disk_encryption_set"

  key_vault_key_id    = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
