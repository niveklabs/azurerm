terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_application_insights" "this" {
  application_type                      = var.application_type
  daily_data_cap_in_gb                  = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled = var.daily_data_cap_notifications_disabled
  location                              = var.location
  name                                  = var.name
  resource_group_name                   = var.resource_group_name
  retention_in_days                     = var.retention_in_days
  sampling_percentage                   = var.sampling_percentage
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

