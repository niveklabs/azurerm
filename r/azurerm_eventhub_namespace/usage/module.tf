module "azurerm_eventhub_namespace" {
  source = "./azurerm/r/azurerm_eventhub_namespace"

  auto_inflate_enabled     = null
  capacity                 = null
  location                 = null
  maximum_throughput_units = null
  name                     = null
  network_rulesets = [{
    default_action = null
    ip_rule = [{
      action  = null
      ip_mask = null
    }]
    virtual_network_rule = [{
      ignore_missing_virtual_network_service_endpoint = null
      subnet_id                                       = null
    }]
  }]
  resource_group_name = null
  sku                 = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
