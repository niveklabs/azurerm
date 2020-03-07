terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_storage_container" "this" {
  metadata             = var.metadata
  name                 = var.name
  storage_account_name = var.storage_account_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

