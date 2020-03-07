module "azurerm_netapp_account" {
  source = "./azurerm/r/azurerm_netapp_account"

  location            = null
  name                = null
  resource_group_name = null

  active_directory = [{
    dns_servers         = []
    domain              = null
    organizational_unit = null
    password            = null
    smb_server_name     = null
    username            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
