terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventgrid_domain" "this" {
  input_schema        = var.input_schema
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "input_mapping_default_values" {
    for_each = var.input_mapping_default_values
    content {
      data_version = input_mapping_default_values.value["data_version"]
      event_type   = input_mapping_default_values.value["event_type"]
      subject      = input_mapping_default_values.value["subject"]
    }
  }

  dynamic "input_mapping_fields" {
    for_each = var.input_mapping_fields
    content {
      data_version = input_mapping_fields.value["data_version"]
      event_time   = input_mapping_fields.value["event_time"]
      event_type   = input_mapping_fields.value["event_type"]
      id           = input_mapping_fields.value["id"]
      subject      = input_mapping_fields.value["subject"]
      topic        = input_mapping_fields.value["topic"]
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

