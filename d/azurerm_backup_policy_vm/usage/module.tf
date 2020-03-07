module "azurerm_backup_policy_vm" {
  source = "./azurerm/d/azurerm_backup_policy_vm"

  name                = null
  recovery_vault_name = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
