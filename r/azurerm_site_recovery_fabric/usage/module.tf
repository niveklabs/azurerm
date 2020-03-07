module "azurerm_site_recovery_fabric" {
  source = "./azurerm/r/azurerm_site_recovery_fabric"

  location            = null
  name                = null
  recovery_vault_name = null
  resource_group_name = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
