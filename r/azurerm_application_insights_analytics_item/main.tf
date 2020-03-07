terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_application_insights_analytics_item" "this" {
  application_insights_id = var.application_insights_id
  content                 = var.content
  function_alias          = var.function_alias
  name                    = var.name
  scope                   = var.scope
  type                    = var.type

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

