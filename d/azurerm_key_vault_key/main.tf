terraform {
  required_providers {
    azurerm = ">= 2.3.0"
  }
}

data "azurerm_key_vault_key" "this" {
  key_vault_id = var.key_vault_id
  name         = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

