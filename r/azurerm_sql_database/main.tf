terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_database" "this" {
  collation                        = var.collation
  create_mode                      = var.create_mode
  edition                          = var.edition
  elastic_pool_name                = var.elastic_pool_name
  location                         = var.location
  max_size_bytes                   = var.max_size_bytes
  name                             = var.name
  read_scale                       = var.read_scale
  requested_service_objective_id   = var.requested_service_objective_id
  requested_service_objective_name = var.requested_service_objective_name
  resource_group_name              = var.resource_group_name
  restore_point_in_time            = var.restore_point_in_time
  server_name                      = var.server_name
  source_database_deletion_date    = var.source_database_deletion_date
  source_database_id               = var.source_database_id
  tags                             = var.tags
  zone_redundant                   = var.zone_redundant

  dynamic "import" {
    for_each = var.import
    content {
      administrator_login          = import.value["administrator_login"]
      administrator_login_password = import.value["administrator_login_password"]
      authentication_type          = import.value["authentication_type"]
      operation_mode               = import.value["operation_mode"]
      storage_key                  = import.value["storage_key"]
      storage_key_type             = import.value["storage_key_type"]
      storage_uri                  = import.value["storage_uri"]
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

