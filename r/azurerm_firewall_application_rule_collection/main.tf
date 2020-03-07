terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_firewall_application_rule_collection" "this" {
  action              = var.action
  azure_firewall_name = var.azure_firewall_name
  name                = var.name
  priority            = var.priority
  resource_group_name = var.resource_group_name

  dynamic "rule" {
    for_each = var.rule
    content {
      description      = rule.value["description"]
      fqdn_tags        = rule.value["fqdn_tags"]
      name             = rule.value["name"]
      source_addresses = rule.value["source_addresses"]
      target_fqdns     = rule.value["target_fqdns"]

      dynamic "protocol" {
        for_each = rule.value.protocol
        content {
          port = protocol.value["port"]
          type = protocol.value["type"]
        }
      }

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

