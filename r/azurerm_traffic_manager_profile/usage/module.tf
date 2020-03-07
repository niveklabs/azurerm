module "azurerm_traffic_manager_profile" {
  source = "./azurerm/r/azurerm_traffic_manager_profile"

  name                   = null
  profile_status         = null
  resource_group_name    = null
  tags                   = {}
  traffic_routing_method = null

  dns_config = [{
    relative_name = null
    ttl           = null
  }]

  monitor_config = [{
    expected_status_code_ranges  = []
    interval_in_seconds          = null
    path                         = null
    port                         = null
    protocol                     = null
    timeout_in_seconds           = null
    tolerated_number_of_failures = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
