module "azurerm_site_recovery_replicated_vm" {
  source = "./azurerm/r/azurerm_site_recovery_replicated_vm"

  managed_disk = [{
    disk_id                    = null
    staging_storage_account_id = null
    target_disk_type           = null
    target_replica_disk_type   = null
    target_resource_group_id   = null
  }]
  name                                      = null
  recovery_replication_policy_id            = null
  recovery_vault_name                       = null
  resource_group_name                       = null
  source_recovery_fabric_name               = null
  source_recovery_protection_container_name = null
  source_vm_id                              = null
  target_availability_set_id                = null
  target_recovery_fabric_id                 = null
  target_recovery_protection_container_id   = null
  target_resource_group_id                  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
