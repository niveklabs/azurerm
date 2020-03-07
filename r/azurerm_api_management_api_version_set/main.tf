terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_api_version_set" "this" {
  api_management_name = var.api_management_name
  description         = var.description
  display_name        = var.display_name
  name                = var.name
  resource_group_name = var.resource_group_name
  version_header_name = var.version_header_name
  version_query_name  = var.version_query_name
  versioning_scheme   = var.versioning_scheme

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

