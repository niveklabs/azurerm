module "azurerm_site_recovery_protection_container_mapping" {
  source = "./azurerm/r/azurerm_site_recovery_protection_container_mapping"

  name                                      = null
  recovery_fabric_name                      = null
  recovery_replication_policy_id            = null
  recovery_source_protection_container_name = null
  recovery_target_protection_container_id   = null
  recovery_vault_name                       = null
  resource_group_name                       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
