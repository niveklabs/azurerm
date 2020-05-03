terraform {
  required_providers {
    azurerm = ">= 2.1.0"
  }
}

data "azurerm_monitor_log_profile" "this" {
  name = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

