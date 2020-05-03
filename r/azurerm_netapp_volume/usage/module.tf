module "azurerm_netapp_volume" {
  source = "./modules/azurerm/r/azurerm_netapp_volume"

  account_name        = null
  location            = null
  name                = null
  pool_name           = null
  protocols           = []
  resource_group_name = null
  service_level       = null
  storage_quota_in_gb = null
  subnet_id           = null
  tags                = {}
  volume_path         = null

  export_policy_rule = [{
    allowed_clients   = []
    cifs_enabled      = null
    nfsv3_enabled     = null
    nfsv4_enabled     = null
    protocols_enabled = []
    rule_index        = null
    unix_read_only    = null
    unix_read_write   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
