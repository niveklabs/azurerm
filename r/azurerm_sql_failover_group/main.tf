terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_failover_group" "this" {
  databases           = var.databases
  name                = var.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  tags                = var.tags

  dynamic "partner_servers" {
    for_each = var.partner_servers
    content {
      id = partner_servers.value["id"]
    }
  }

  dynamic "read_write_endpoint_failover_policy" {
    for_each = var.read_write_endpoint_failover_policy
    content {
      grace_minutes = read_write_endpoint_failover_policy.value["grace_minutes"]
      mode          = read_write_endpoint_failover_policy.value["mode"]
    }
  }

  dynamic "readonly_endpoint_failover_policy" {
    for_each = var.readonly_endpoint_failover_policy
    content {
      mode = readonly_endpoint_failover_policy.value["mode"]
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

