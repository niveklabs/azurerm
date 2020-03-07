terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_bot_channel_slack" "this" {
  bot_name            = var.bot_name
  client_id           = var.client_id
  client_secret       = var.client_secret
  landing_page_url    = var.landing_page_url
  location            = var.location
  resource_group_name = var.resource_group_name
  verification_token  = var.verification_token

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

