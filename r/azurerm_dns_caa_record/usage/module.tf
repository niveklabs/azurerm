module "azurerm_dns_caa_record" {
  source = "./azurerm/r/azurerm_dns_caa_record"

  name                = null
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  record = [{
    flags = null
    tag   = null
    value = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
