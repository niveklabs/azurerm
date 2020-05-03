terraform {
  required_providers {
    azurerm = ">= 2.7.0"
  }
}

resource "azurerm_servicebus_namespace_network_rule_set" "this" {
  default_action      = var.default_action
  ip_rules            = var.ip_rules
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name

  dynamic "network_rules" {
    for_each = var.network_rules
    content {
      ignore_missing_vnet_service_endpoint = network_rules.value["ignore_missing_vnet_service_endpoint"]
      subnet_id                            = network_rules.value["subnet_id"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

