module "azurerm_hpc_cache" {
  source = "./modules/azurerm/r/azurerm_hpc_cache"

  cache_size_in_gb    = null
  location            = null
  name                = null
  resource_group_name = null
  sku_name            = null
  subnet_id           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
  }]
}
