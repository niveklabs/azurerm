module "azurerm_dns_txt_record" {
  source = "./azurerm/r/azurerm_dns_txt_record"

  name                = null
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  record = [{
    value = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
