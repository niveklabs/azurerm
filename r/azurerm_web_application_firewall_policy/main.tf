terraform {
  required_providers {
    azurerm = ">= 2.8.0"
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

  dynamic "managed_rules" {
    for_each = var.managed_rules
    content {

      dynamic "exclusion" {
        for_each = managed_rules.value.exclusion
        content {
          match_variable          = exclusion.value["match_variable"]
          selector                = exclusion.value["selector"]
          selector_match_operator = exclusion.value["selector_match_operator"]
        }
      }

      dynamic "managed_rule_set" {
        for_each = managed_rules.value.managed_rule_set
        content {
          type    = managed_rule_set.value["type"]
          version = managed_rule_set.value["version"]

          dynamic "rule_group_override" {
            for_each = managed_rule_set.value.rule_group_override
            content {
              disabled_rules  = rule_group_override.value["disabled_rules"]
              rule_group_name = rule_group_override.value["rule_group_name"]
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

