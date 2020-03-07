terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_site_recovery_network_mapping" "this" {
  name                        = var.name
  recovery_vault_name         = var.recovery_vault_name
  resource_group_name         = var.resource_group_name
  source_network_id           = var.source_network_id
  source_recovery_fabric_name = var.source_recovery_fabric_name
  target_network_id           = var.target_network_id
  target_recovery_fabric_name = var.target_recovery_fabric_name

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

