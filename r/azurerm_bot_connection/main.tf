terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_bot_connection" "this" {
  bot_name              = var.bot_name
  client_id             = var.client_id
  client_secret         = var.client_secret
  location              = var.location
  name                  = var.name
  parameters            = var.parameters
  resource_group_name   = var.resource_group_name
  scopes                = var.scopes
  service_provider_name = var.service_provider_name
  tags                  = var.tags

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

