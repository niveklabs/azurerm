module "azurerm_backup_policy_vm" {
  source = "./azurerm/r/azurerm_backup_policy_vm"

  name                = null
  recovery_vault_name = null
  resource_group_name = null
  tags                = {}
  timezone            = null

  backup = [{
    frequency = null
    time      = null
    weekdays  = []
  }]

  retention_daily = [{
    count = null
  }]

  retention_monthly = [{
    count    = null
    weekdays = []
    weeks    = []
  }]

  retention_weekly = [{
    count    = null
    weekdays = []
  }]

  retention_yearly = [{
    count    = null
    months   = []
    weekdays = []
    weeks    = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
