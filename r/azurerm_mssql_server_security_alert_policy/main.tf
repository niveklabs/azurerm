terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_mssql_server_security_alert_policy" "this" {
  disabled_alerts            = var.disabled_alerts
  email_account_admins       = var.email_account_admins
  email_addresses            = var.email_addresses
  resource_group_name        = var.resource_group_name
  retention_days             = var.retention_days
  server_name                = var.server_name
  state                      = var.state
  storage_account_access_key = var.storage_account_access_key
  storage_endpoint           = var.storage_endpoint

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

