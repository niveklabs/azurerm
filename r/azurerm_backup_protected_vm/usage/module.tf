module "azurerm_backup_protected_vm" {
  source = "./azurerm/r/azurerm_backup_protected_vm"

  backup_policy_id    = null
  recovery_vault_name = null
  resource_group_name = null
  source_vm_id        = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
