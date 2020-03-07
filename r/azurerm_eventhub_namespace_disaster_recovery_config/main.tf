terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventhub_namespace_disaster_recovery_config" "this" {
  alternate_name       = var.alternate_name
  name                 = var.name
  namespace_name       = var.namespace_name
  partner_namespace_id = var.partner_namespace_id
  resource_group_name  = var.resource_group_name

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

