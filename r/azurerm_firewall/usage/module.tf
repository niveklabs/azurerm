module "azurerm_firewall" {
  source = "./azurerm/r/azurerm_firewall"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}
  zones               = []

  ip_configuration = [{
    name                 = null
    private_ip_address   = null
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
