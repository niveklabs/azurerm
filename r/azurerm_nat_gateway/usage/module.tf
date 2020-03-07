module "azurerm_nat_gateway" {
  source = "./azurerm/r/azurerm_nat_gateway"

  idle_timeout_in_minutes = null
  location                = null
  name                    = null
  public_ip_address_ids   = []
  public_ip_prefix_ids    = []
  resource_group_name     = null
  sku_name                = null
  tags                    = {}
  zones                   = []

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
