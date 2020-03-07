module "azurerm_site_recovery_network_mapping" {
  source = "./azurerm/r/azurerm_site_recovery_network_mapping"

  name                        = null
  recovery_vault_name         = null
  resource_group_name         = null
  source_network_id           = null
  source_recovery_fabric_name = null
  target_network_id           = null
  target_recovery_fabric_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
