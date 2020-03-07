module "azurerm_managed_disk" {
  source = "./azurerm/r/azurerm_managed_disk"

  create_option          = null
  disk_encryption_set_id = null
  disk_iops_read_write   = null
  disk_mbps_read_write   = null
  disk_size_gb           = null
  image_reference_id     = null
  location               = null
  name                   = null
  os_type                = null
  resource_group_name    = null
  source_resource_id     = null
  source_uri             = null
  storage_account_id     = null
  storage_account_type   = null
  tags                   = {}
  zones                  = []

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
