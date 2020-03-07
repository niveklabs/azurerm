terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_kusto_database_principal" "this" {
  client_id           = var.client_id
  cluster_name        = var.cluster_name
  database_name       = var.database_name
  object_id           = var.object_id
  resource_group_name = var.resource_group_name
  role                = var.role
  type                = var.type

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

