terraform {
  required_providers {
    azurerm = ">= 2.7.0"
  }
}

resource "azurerm_api_management_api_operation_policy" "this" {
  api_management_name = var.api_management_name
  api_name            = var.api_name
  operation_id        = var.operation_id
  resource_group_name = var.resource_group_name
  xml_content         = var.xml_content
  xml_link            = var.xml_link

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

