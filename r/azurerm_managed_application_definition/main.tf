terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_managed_application_definition" "this" {
  create_ui_definition = var.create_ui_definition
  description          = var.description
  display_name         = var.display_name
  location             = var.location
  lock_level           = var.lock_level
  main_template        = var.main_template
  name                 = var.name
  package_enabled      = var.package_enabled
  package_file_uri     = var.package_file_uri
  resource_group_name  = var.resource_group_name
  tags                 = var.tags

  dynamic "authorization" {
    for_each = var.authorization
    content {
      role_definition_id   = authorization.value["role_definition_id"]
      service_principal_id = authorization.value["service_principal_id"]
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

