module "azurerm_private_dns_mx_record" {
  source = "./azurerm/r/azurerm_private_dns_mx_record"

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
