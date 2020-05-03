terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_subscriptions" "this" {
  display_name_contains = var.display_name_contains
  display_name_prefix   = var.display_name_prefix

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

