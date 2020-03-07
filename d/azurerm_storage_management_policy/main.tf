terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_storage_management_policy" "this" {
  storage_account_id = var.storage_account_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

