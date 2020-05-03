module "azurerm_hpc_cache_blob_target" {
  source = "./modules/azurerm/r/azurerm_hpc_cache_blob_target"

  cache_name           = null
  name                 = null
  namespace_path       = null
  resource_group_name  = null
  storage_container_id = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
