terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_elasticpool" "this" {
  db_dtu_max          = var.db_dtu_max
  db_dtu_min          = var.db_dtu_min
  dtu                 = var.dtu
  edition             = var.edition
  location            = var.location
  name                = var.name
  pool_size           = var.pool_size
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  tags                = var.tags

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

