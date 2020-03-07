module "azurerm_firewall_nat_rule_collection" {
  source = "./azurerm/r/azurerm_firewall_nat_rule_collection"

  action              = null
  azure_firewall_name = null
  name                = null
  priority            = null
  resource_group_name = null

  rule = [{
    description           = null
    destination_addresses = []
    destination_ports     = []
    name                  = null
    protocols             = []
    source_addresses      = []
    translated_address    = null
    translated_port       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
