module "azurerm_machine_learning_workspace" {
  source = "./modules/azurerm/r/azurerm_machine_learning_workspace"

  application_insights_id = null
  container_registry_id   = null
  description             = null
  friendly_name           = null
  key_vault_id            = null
  location                = null
  name                    = null
  resource_group_name     = null
  sku_name                = null
  storage_account_id      = null
  tags                    = {}

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
