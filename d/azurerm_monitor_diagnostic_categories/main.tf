terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_monitor_diagnostic_categories" "this" {
  resource_id = var.resource_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

