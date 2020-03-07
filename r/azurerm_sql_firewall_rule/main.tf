terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_firewall_rule" "this" {
  end_ip_address      = var.end_ip_address
  name                = var.name
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  start_ip_address    = var.start_ip_address

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

