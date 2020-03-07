terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_table_entity" "this" {
  entity               = var.entity
  partition_key        = var.partition_key
  row_key              = var.row_key
  storage_account_name = var.storage_account_name
  table_name           = var.table_name

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

