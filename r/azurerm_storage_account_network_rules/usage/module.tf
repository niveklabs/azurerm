module "azurerm_storage_account_network_rules" {
  source = "./azurerm/r/azurerm_storage_account_network_rules"

  bypass                     = []
  default_action             = null
  ip_rules                   = []
  resource_group_name        = null
  storage_account_name       = null
  virtual_network_subnet_ids = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
