module "azurerm_redis_firewall_rule" {
  source = "./azurerm/r/azurerm_redis_firewall_rule"

  end_ip              = null
  name                = null
  redis_cache_name    = null
  resource_group_name = null
  start_ip            = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
