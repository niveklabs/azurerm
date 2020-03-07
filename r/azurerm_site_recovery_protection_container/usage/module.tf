module "azurerm_site_recovery_protection_container" {
  source = "./azurerm/r/azurerm_site_recovery_protection_container"

  name                 = null
  recovery_fabric_name = null
  recovery_vault_name  = null
  resource_group_name  = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
