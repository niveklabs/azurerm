terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_kusto_eventhub_data_connection" "this" {
  cluster_name        = var.cluster_name
  consumer_group      = var.consumer_group
  data_format         = var.data_format
  database_name       = var.database_name
  eventhub_id         = var.eventhub_id
  location            = var.location
  mapping_rule_name   = var.mapping_rule_name
  name                = var.name
  resource_group_name = var.resource_group_name
  table_name          = var.table_name

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

