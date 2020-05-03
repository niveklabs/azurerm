terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_mssql_virtual_machine" "this" {
  r_services_enabled               = var.r_services_enabled
  sql_connectivity_port            = var.sql_connectivity_port
  sql_connectivity_type            = var.sql_connectivity_type
  sql_connectivity_update_password = var.sql_connectivity_update_password
  sql_connectivity_update_username = var.sql_connectivity_update_username
  sql_license_type                 = var.sql_license_type
  tags                             = var.tags
  virtual_machine_id               = var.virtual_machine_id

  dynamic "auto_patching" {
    for_each = var.auto_patching
    content {
      day_of_week                            = auto_patching.value["day_of_week"]
      maintenance_window_duration_in_minutes = auto_patching.value["maintenance_window_duration_in_minutes"]
      maintenance_window_starting_hour       = auto_patching.value["maintenance_window_starting_hour"]
    }
  }

  dynamic "key_vault_credential" {
    for_each = var.key_vault_credential
    content {
      key_vault_url            = key_vault_credential.value["key_vault_url"]
      name                     = key_vault_credential.value["name"]
      service_principal_name   = key_vault_credential.value["service_principal_name"]
      service_principal_secret = key_vault_credential.value["service_principal_secret"]
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

