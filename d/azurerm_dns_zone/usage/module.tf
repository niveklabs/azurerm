module "azurerm_dns_zone" {
  source = "./modules/azurerm/d/azurerm_dns_zone"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
