terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_traffic_manager_geographical_location" "this" {
  name = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

