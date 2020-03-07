terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_lake_store_file" "this" {
  account_name     = var.account_name
  local_file_path  = var.local_file_path
  remote_file_path = var.remote_file_path

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

