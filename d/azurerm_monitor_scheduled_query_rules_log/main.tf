terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

data "azurerm_monitor_scheduled_query_rules_log" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

