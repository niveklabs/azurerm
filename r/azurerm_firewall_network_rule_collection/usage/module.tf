module "azurerm_firewall_network_rule_collection" {
  source = "./azurerm/r/azurerm_firewall_network_rule_collection"

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
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
