terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_log_profile" "this" {
  categories         = var.categories
  locations          = var.locations
  name               = var.name
  servicebus_rule_id = var.servicebus_rule_id
  storage_account_id = var.storage_account_id

  dynamic "retention_policy" {
    for_each = var.retention_policy
    content {
      days    = retention_policy.value["days"]
      enabled = retention_policy.value["enabled"]
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

