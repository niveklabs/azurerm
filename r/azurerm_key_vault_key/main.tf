terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_key_vault_key" "this" {
  curve           = var.curve
  expiration_date = var.expiration_date
  key_opts        = var.key_opts
  key_size        = var.key_size
  key_type        = var.key_type
  key_vault_id    = var.key_vault_id
  name            = var.name
  not_before_date = var.not_before_date
  tags            = var.tags

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

