module "azurerm_nat_gateway" {
  source = "./azurerm/d/azurerm_nat_gateway"

  name                  = null
  public_ip_address_ids = []
  public_ip_prefix_ids  = []
  resource_group_name   = null

  timeouts = [{
    read = null
  }]
}
