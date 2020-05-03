module "azurerm_servicebus_namespace_network_rule_set" {
  source = "./modules/azurerm/r/azurerm_servicebus_namespace_network_rule_set"

  default_action      = null
  ip_rules            = []
  namespace_name      = null
  resource_group_name = null

  network_rules = [{
    ignore_missing_vnet_service_endpoint = null
    subnet_id                            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
