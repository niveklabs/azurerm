terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_subscription" "this" {
  api_management_name = var.api_management_name
  display_name        = var.display_name
  primary_key         = var.primary_key
  product_id          = var.product_id
  resource_group_name = var.resource_group_name
  secondary_key       = var.secondary_key
  state               = var.state
  subscription_id     = var.subscription_id
  user_id             = var.user_id

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

