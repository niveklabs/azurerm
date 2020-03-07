module "azurerm_private_dns_cname_record" {
  source = "./azurerm/r/azurerm_private_dns_cname_record"

  name                = null
  record              = null
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
