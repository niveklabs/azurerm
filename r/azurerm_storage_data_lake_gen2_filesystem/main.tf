terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_data_lake_gen2_filesystem" "this" {
  name               = var.name
  properties         = var.properties
  storage_account_id = var.storage_account_id

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

