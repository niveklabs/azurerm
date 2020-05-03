module "azurerm_redis_cache" {
  source = "./modules/azurerm/d/azurerm_redis_cache"

  name                = null
  resource_group_name = null
  zones               = []

  timeouts = [{
    read = null
  }]
}
