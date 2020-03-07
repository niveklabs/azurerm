module "azurerm_key_vault" {
  source = "./azurerm/r/azurerm_key_vault"

  access_policy = [{
    application_id          = null
    certificate_permissions = []
    key_permissions         = []
    object_id               = null
    secret_permissions      = []
    storage_permissions     = []
    tenant_id               = null
  }]
  enabled_for_deployment          = null
  enabled_for_disk_encryption     = null
  enabled_for_template_deployment = null
  location                        = null
  name                            = null
  purge_protection_enabled        = null
  resource_group_name             = null
  sku_name                        = null
  soft_delete_enabled             = null
  tags                            = {}
  tenant_id                       = null

  network_acls = [{
    bypass                     = null
    default_action             = null
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
