terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_key_vault_secret" "this" {
  content_type    = var.content_type
  expiration_date = var.expiration_date
  key_vault_id    = var.key_vault_id
  name            = var.name
  not_before_date = var.not_before_date
  tags            = var.tags
  value           = var.value

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

