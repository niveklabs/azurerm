module "azurerm_network_watcher_flow_log" {
  source = "./azurerm/r/azurerm_network_watcher_flow_log"

  enabled                   = null
  network_security_group_id = null
  network_watcher_name      = null
  resource_group_name       = null
  storage_account_id        = null
  version                   = null

  retention_policy = [{
    days    = null
    enabled = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  traffic_analytics = [{
    enabled               = null
    workspace_id          = null
    workspace_region      = null
    workspace_resource_id = null
  }]
}
