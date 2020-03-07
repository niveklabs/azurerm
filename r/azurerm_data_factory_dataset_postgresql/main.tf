terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory_dataset_postgresql" "this" {
  additional_properties = var.additional_properties
  annotations           = var.annotations
  data_factory_name     = var.data_factory_name
  description           = var.description
  folder                = var.folder
  linked_service_name   = var.linked_service_name
  name                  = var.name
  parameters            = var.parameters
  resource_group_name   = var.resource_group_name
  table_name            = var.table_name

  dynamic "schema_column" {
    for_each = var.schema_column
    content {
      description = schema_column.value["description"]
      name        = schema_column.value["name"]
      type        = schema_column.value["type"]
    }
  }

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

