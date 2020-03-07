module "azurerm_backup_policy_file_share" {
  source = "./azurerm/r/azurerm_backup_policy_file_share"

  name                = null
  recovery_vault_name = null
  resource_group_name = null
  timezone            = null

  backup = [{
    frequency = null
    time      = null
  }]

  retention_daily = [{
    count = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
