module "azurerm_network_connection_monitor" {
  source = [{
    port               = null
    virtual_machine_id = null
  }]

  auto_start           = null
  interval_in_seconds  = null
  location             = null
  name                 = null
  network_watcher_name = null
  resource_group_name  = null
  tags                 = {}

  destination = [{
    address            = null
    port               = null
    virtual_machine_id = null
  }]


  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
