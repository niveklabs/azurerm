module "azurerm_firewall_application_rule_collection" {
  source = "./azurerm/r/azurerm_firewall_application_rule_collection"

  action              = null
  azure_firewall_name = null
  name                = null
  priority            = null
  resource_group_name = null

  rule = [{
    description = null
    fqdn_tags   = []
    name        = null
    protocol = [{
      port = null
      type = null
    }]
    source_addresses = []
    target_fqdns     = []
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
