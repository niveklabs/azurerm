terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_bot_channel_email" "this" {
  bot_name            = var.bot_name
  email_address       = var.email_address
  email_password      = var.email_password
  location            = var.location
  resource_group_name = var.resource_group_name

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

