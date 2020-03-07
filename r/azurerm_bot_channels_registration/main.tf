terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_bot_channels_registration" "this" {
  developer_app_insights_api_key        = var.developer_app_insights_api_key
  developer_app_insights_application_id = var.developer_app_insights_application_id
  developer_app_insights_key            = var.developer_app_insights_key
  display_name                          = var.display_name
  endpoint                              = var.endpoint
  location                              = var.location
  microsoft_app_id                      = var.microsoft_app_id
  name                                  = var.name
  resource_group_name                   = var.resource_group_name
  sku                                   = var.sku
  tags                                  = var.tags

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

