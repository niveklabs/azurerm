module "azurerm_dns_zone" {
  source = "./azurerm/d/azurerm_dns_zone"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
