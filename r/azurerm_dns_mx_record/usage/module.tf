module "azurerm_dns_mx_record" {
  source = "./modules/azurerm/r/azurerm_dns_mx_record"

  name                = null
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  record = [{
    exchange   = null
    preference = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
