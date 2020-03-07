module "azurerm_network_interface" {
  source = "./azurerm/r/azurerm_network_interface"

  dns_servers                   = []
  enable_accelerated_networking = null
  enable_ip_forwarding          = null
  internal_dns_name_label       = null
  location                      = null
  name                          = null
  resource_group_name           = null
  tags                          = {}

  ip_configuration = [{
    name                          = null
    primary                       = null
    private_ip_address            = null
    private_ip_address_allocation = null
    private_ip_address_version    = null
    public_ip_address_id          = null
    subnet_id                     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
