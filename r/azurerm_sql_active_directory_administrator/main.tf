terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_active_directory_administrator" "this" {
  login               = var.login
  object_id           = var.object_id
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  tenant_id           = var.tenant_id

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

