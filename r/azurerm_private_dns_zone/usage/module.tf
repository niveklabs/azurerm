module "azurerm_private_dns_zone" {
  source = "./azurerm/r/azurerm_private_dns_zone"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
