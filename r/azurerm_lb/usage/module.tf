module "azurerm_lb" {
  source = "./azurerm/r/azurerm_lb"

  location            = null
  name                = null
  resource_group_name = null
  sku                 = null
  tags                = {}

  frontend_ip_configuration = [{
    id                            = null
    inbound_nat_rules             = []
    load_balancer_rules           = []
    name                          = null
    outbound_rules                = []
    private_ip_address            = null
    private_ip_address_allocation = null
    public_ip_address_id          = null
    public_ip_prefix_id           = null
    subnet_id                     = null
    zones                         = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
