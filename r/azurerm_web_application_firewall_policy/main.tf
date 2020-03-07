terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_web_application_firewall_policy" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "custom_rules" {
    for_each = var.custom_rules
    content {
      action    = custom_rules.value["action"]
      name      = custom_rules.value["name"]
      priority  = custom_rules.value["priority"]
      rule_type = custom_rules.value["rule_type"]

      dynamic "match_conditions" {
        for_each = custom_rules.value.match_conditions
        content {
          match_values       = match_conditions.value["match_values"]
          negation_condition = match_conditions.value["negation_condition"]
          operator           = match_conditions.value["operator"]

          dynamic "match_variables" {
            for_each = match_conditions.value.match_variables
            content {
              selector      = match_variables.value["selector"]
              variable_name = match_variables.value["variable_name"]
            }
          }

        }
      }

    }
  }

  dynamic "policy_settings" {
    for_each = var.policy_settings
    content {
      enabled = policy_settings.value["enabled"]
      mode    = policy_settings.value["mode"]
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

