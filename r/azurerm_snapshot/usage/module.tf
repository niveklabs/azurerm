module "azurerm_snapshot" {
  source = "./azurerm/r/azurerm_snapshot"

  create_option       = null
  disk_size_gb        = null
  location            = null
  name                = null
  resource_group_name = null
  source_resource_id  = null
  source_uri          = null
  storage_account_id  = null
  tags                = {}

  encryption_settings = [{
    disk_encryption_key = [{
      secret_url      = null
      source_vault_id = null
    }]
    enabled = null
    key_encryption_key = [{
      key_url         = null
      source_vault_id = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
