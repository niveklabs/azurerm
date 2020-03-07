module "azurerm_dns_a_record" {
  source = "./azurerm/r/azurerm_dns_a_record"

  name                = null
  records             = []
  resource_group_name = null
  tags                = {}
  target_resource_id  = null
  ttl                 = null
  zone_name           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
