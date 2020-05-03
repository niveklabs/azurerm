terraform {
  required_providers {
    azurerm = ">= 2.6.0"
  }
}

resource "azurerm_bot_channel_directline" "this" {
  bot_name            = var.bot_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dynamic "site" {
    for_each = var.site
    content {
      enabled                         = site.value["enabled"]
      enhanced_authentication_enabled = site.value["enhanced_authentication_enabled"]
      name                            = site.value["name"]
      trusted_origins                 = site.value["trusted_origins"]
      v1_allowed                      = site.value["v1_allowed"]
      v3_allowed                      = site.value["v3_allowed"]
    }
  }

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

