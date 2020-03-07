terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_stream_analytics_output_mssql" "this" {
  database                  = var.database
  name                      = var.name
  password                  = var.password
  resource_group_name       = var.resource_group_name
  server                    = var.server
  stream_analytics_job_name = var.stream_analytics_job_name
  table                     = var.table
  user                      = var.user

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

