terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_subscription" "this" {
  subscription_id = var.subscription_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

