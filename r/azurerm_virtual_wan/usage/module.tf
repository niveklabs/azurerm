module "azurerm_virtual_wan" {
  source = "./azurerm/r/azurerm_virtual_wan"

  allow_branch_to_branch_traffic    = null
  allow_vnet_to_vnet_traffic        = null
  disable_vpn_encryption            = null
  location                          = null
  name                              = null
  office365_local_breakout_category = null
  resource_group_name               = null
  tags                              = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
