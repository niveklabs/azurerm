terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_sql_virtual_network_rule" "this" {
  ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint
  name                                 = var.name
  resource_group_name                  = var.resource_group_name
  server_name                          = var.server_name
  subnet_id                            = var.subnet_id

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

