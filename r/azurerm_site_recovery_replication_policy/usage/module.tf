module "azurerm_site_recovery_replication_policy" {
  source = "./azurerm/r/azurerm_site_recovery_replication_policy"

  application_consistent_snapshot_frequency_in_minutes = null
  name                                                 = null
  recovery_point_retention_in_minutes                  = null
  recovery_vault_name                                  = null
  resource_group_name                                  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
