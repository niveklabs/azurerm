terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_key_vault_access_policy" "this" {
  name = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

