terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_site_recovery_protection_container_mapping" "this" {
  name                                      = var.name
  recovery_fabric_name                      = var.recovery_fabric_name
  recovery_replication_policy_id            = var.recovery_replication_policy_id
  recovery_source_protection_container_name = var.recovery_source_protection_container_name
  recovery_target_protection_container_id   = var.recovery_target_protection_container_id
  recovery_vault_name                       = var.recovery_vault_name
  resource_group_name                       = var.resource_group_name

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

