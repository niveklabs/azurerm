terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_traffic_manager_profile" "this" {
  name                   = var.name
  profile_status         = var.profile_status
  resource_group_name    = var.resource_group_name
  tags                   = var.tags
  traffic_routing_method = var.traffic_routing_method

  dynamic "dns_config" {
    for_each = var.dns_config
    content {
      relative_name = dns_config.value["relative_name"]
      ttl           = dns_config.value["ttl"]
    }
  }

  dynamic "monitor_config" {
    for_each = var.monitor_config
    content {
      expected_status_code_ranges  = monitor_config.value["expected_status_code_ranges"]
      interval_in_seconds          = monitor_config.value["interval_in_seconds"]
      path                         = monitor_config.value["path"]
      port                         = monitor_config.value["port"]
      protocol                     = monitor_config.value["protocol"]
      timeout_in_seconds           = monitor_config.value["timeout_in_seconds"]
      tolerated_number_of_failures = monitor_config.value["tolerated_number_of_failures"]
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

