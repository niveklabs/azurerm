terraform {
  required_providers {
    azurerm = ">= 2.6.0"
  }
}

resource "azurerm_sql_server" "this" {
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  connection_policy            = var.connection_policy
  location                     = var.location
  name                         = var.name
  resource_group_name          = var.resource_group_name
  tags                         = var.tags
  version                      = var.version

  dynamic "extended_auditing_policy" {
    for_each = var.extended_auditing_policy
    content {
      retention_in_days                       = extended_auditing_policy.value["retention_in_days"]
      storage_account_access_key              = extended_auditing_policy.value["storage_account_access_key"]
      storage_account_access_key_is_secondary = extended_auditing_policy.value["storage_account_access_key_is_secondary"]
      storage_endpoint                        = extended_auditing_policy.value["storage_endpoint"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
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

