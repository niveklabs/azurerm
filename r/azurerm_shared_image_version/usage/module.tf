module "azurerm_shared_image_version" {
  source = "./azurerm/r/azurerm_shared_image_version"

  exclude_from_latest = null
  gallery_name        = null
  image_name          = null
  location            = null
  managed_image_id    = null
  name                = null
  resource_group_name = null
  tags                = {}

  target_region = [{
    name                   = null
    regional_replica_count = null
    storage_account_type   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
