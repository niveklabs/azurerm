terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_storage_account_customer_managed_key" "this" {
  key_name           = var.key_name
  key_vault_id       = var.key_vault_id
  key_version        = var.key_version
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

