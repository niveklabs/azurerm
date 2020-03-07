module "azurerm_cosmosdb_account" {
  source = "./azurerm/r/azurerm_cosmosdb_account"

  enable_automatic_failover         = null
  enable_multiple_write_locations   = null
  ip_range_filter                   = null
  is_virtual_network_filter_enabled = null
  kind                              = null
  location                          = null
  name                              = null
  offer_type                        = null
  resource_group_name               = null
  tags                              = {}

  capabilities = [{
    name = null
  }]

  consistency_policy = [{
    consistency_level       = null
    max_interval_in_seconds = null
    max_staleness_prefix    = null
  }]

  geo_location = [{
    failover_priority = null
    id                = null
    location          = null
    prefix            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  virtual_network_rule = [{
    id = null
  }]
}
