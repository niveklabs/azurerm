terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_api_schema" "this" {
  api_management_name = var.api_management_name
  api_name            = var.api_name
  content_type        = var.content_type
  resource_group_name = var.resource_group_name
  schema_id           = var.schema_id
  value               = var.value

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

