terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_frontdoor_firewall_policy" "this" {
  custom_block_response_body        = var.custom_block_response_body
  custom_block_response_status_code = var.custom_block_response_status_code
  enabled                           = var.enabled
  mode                              = var.mode
  name                              = var.name
  redirect_url                      = var.redirect_url
  resource_group_name               = var.resource_group_name
  tags                              = var.tags

  dynamic "custom_rule" {
    for_each = var.custom_rule
    content {
      action                         = custom_rule.value["action"]
      enabled                        = custom_rule.value["enabled"]
      name                           = custom_rule.value["name"]
      priority                       = custom_rule.value["priority"]
      rate_limit_duration_in_minutes = custom_rule.value["rate_limit_duration_in_minutes"]
      rate_limit_threshold           = custom_rule.value["rate_limit_threshold"]
      type                           = custom_rule.value["type"]

      dynamic "match_condition" {
        for_each = custom_rule.value.match_condition
        content {
          match_values       = match_condition.value["match_values"]
          match_variable     = match_condition.value["match_variable"]
          negation_condition = match_condition.value["negation_condition"]
          operator           = match_condition.value["operator"]
          selector           = match_condition.value["selector"]
          transforms         = match_condition.value["transforms"]
        }
      }

    }
  }

  dynamic "managed_rule" {
    for_each = var.managed_rule
    content {
      type    = managed_rule.value["type"]
      version = managed_rule.value["version"]

      dynamic "exclusion" {
        for_each = managed_rule.value.exclusion
        content {
          match_variable = exclusion.value["match_variable"]
          operator       = exclusion.value["operator"]
          selector       = exclusion.value["selector"]
        }
      }

      dynamic "override" {
        for_each = managed_rule.value.override
        content {
          rule_group_name = override.value["rule_group_name"]

          dynamic "exclusion" {
            for_each = override.value.exclusion
            content {
              match_variable = exclusion.value["match_variable"]
              operator       = exclusion.value["operator"]
              selector       = exclusion.value["selector"]
            }
          }

          dynamic "rule" {
            for_each = override.value.rule
            content {
              action  = rule.value["action"]
              enabled = rule.value["enabled"]
              rule_id = rule.value["rule_id"]

              dynamic "exclusion" {
                for_each = rule.value.exclusion
                content {
                  match_variable = exclusion.value["match_variable"]
                  operator       = exclusion.value["operator"]
                  selector       = exclusion.value["selector"]
                }
              }

            }
          }

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

