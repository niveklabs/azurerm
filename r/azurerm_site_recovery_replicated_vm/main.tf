terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_site_recovery_replicated_vm" "this" {
  managed_disk                              = var.managed_disk
  name                                      = var.name
  recovery_replication_policy_id            = var.recovery_replication_policy_id
  recovery_vault_name                       = var.recovery_vault_name
  resource_group_name                       = var.resource_group_name
  source_recovery_fabric_name               = var.source_recovery_fabric_name
  source_recovery_protection_container_name = var.source_recovery_protection_container_name
  source_vm_id                              = var.source_vm_id
  target_availability_set_id                = var.target_availability_set_id
  target_recovery_fabric_id                 = var.target_recovery_fabric_id
  target_recovery_protection_container_id   = var.target_recovery_protection_container_id
  target_resource_group_id                  = var.target_resource_group_id

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

