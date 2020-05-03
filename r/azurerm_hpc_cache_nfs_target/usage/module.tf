module "azurerm_hpc_cache_nfs_target" {
  source = "./modules/azurerm/r/azurerm_hpc_cache_nfs_target"

  cache_name          = null
  name                = null
  resource_group_name = null
  target_host_name    = null
  usage_model         = null

  namespace_junction = [{
    namespace_path = null
    nfs_export     = null
    target_path    = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
