terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_mssql_database" "this" {
  auto_pause_delay_in_minutes = var.auto_pause_delay_in_minutes
  collation                   = var.collation
  create_mode                 = var.create_mode
  creation_source_database_id = var.creation_source_database_id
  elastic_pool_id             = var.elastic_pool_id
  license_type                = var.license_type
  max_size_gb                 = var.max_size_gb
  min_capacity                = var.min_capacity
  name                        = var.name
  read_replica_count          = var.read_replica_count
  read_scale                  = var.read_scale
  restore_point_in_time       = var.restore_point_in_time
  sample_name                 = var.sample_name
  server_id                   = var.server_id
  sku_name                    = var.sku_name
  tags                        = var.tags
  zone_redundant              = var.zone_redundant

  dynamic "extended_auditing_policy" {
    for_each = var.extended_auditing_policy
    content {
      retention_in_days                       = extended_auditing_policy.value["retention_in_days"]
      storage_account_access_key              = extended_auditing_policy.value["storage_account_access_key"]
      storage_account_access_key_is_secondary = extended_auditing_policy.value["storage_account_access_key_is_secondary"]
      storage_endpoint                        = extended_auditing_policy.value["storage_endpoint"]
    }
  }

  dynamic "threat_detection_policy" {
    for_each = var.threat_detection_policy
    content {
      disabled_alerts            = threat_detection_policy.value["disabled_alerts"]
      email_account_admins       = threat_detection_policy.value["email_account_admins"]
      email_addresses            = threat_detection_policy.value["email_addresses"]
      retention_days             = threat_detection_policy.value["retention_days"]
      state                      = threat_detection_policy.value["state"]
      storage_account_access_key = threat_detection_policy.value["storage_account_access_key"]
      storage_endpoint           = threat_detection_policy.value["storage_endpoint"]
      use_server_default         = threat_detection_policy.value["use_server_default"]
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

