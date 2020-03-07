terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_bot_channel_ms_teams" "this" {
  bot_name            = var.bot_name
  calling_web_hook    = var.calling_web_hook
  enable_calling      = var.enable_calling
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

