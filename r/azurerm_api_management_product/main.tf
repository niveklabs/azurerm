terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_product" "this" {
  api_management_name   = var.api_management_name
  approval_required     = var.approval_required
  description           = var.description
  display_name          = var.display_name
  product_id            = var.product_id
  published             = var.published
  resource_group_name   = var.resource_group_name
  subscription_required = var.subscription_required
  subscriptions_limit   = var.subscriptions_limit
  terms                 = var.terms

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

