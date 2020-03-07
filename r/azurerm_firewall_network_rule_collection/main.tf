terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_firewall_network_rule_collection" "this" {
  action              = var.action
  azure_firewall_name = var.azure_firewall_name
  name                = var.name
  priority            = var.priority
  resource_group_name = var.resource_group_name

  dynamic "rule" {
    for_each = var.rule
    content {
      description           = rule.value["description"]
      destination_addresses = rule.value["destination_addresses"]
      destination_ports     = rule.value["destination_ports"]
      name                  = rule.value["name"]
      protocols             = rule.value["protocols"]
      source_addresses      = rule.value["source_addresses"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

