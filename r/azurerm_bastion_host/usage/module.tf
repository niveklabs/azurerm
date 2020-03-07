module "azurerm_bastion_host" {
  source = "./azurerm/r/azurerm_bastion_host"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  ip_configuration = [{
    name                 = null
    public_ip_address_id = null
    subnet_id            = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
