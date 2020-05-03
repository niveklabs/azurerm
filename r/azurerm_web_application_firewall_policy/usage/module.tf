module "azurerm_web_application_firewall_policy" {
  source = "./modules/azurerm/r/azurerm_web_application_firewall_policy"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  custom_rules = [{
    action = null
    match_conditions = [{
      match_values = []
      match_variables = [{
        selector      = null
        variable_name = null
      }]
      negation_condition = null
      operator           = null
    }]
    name      = null
    priority  = null
    rule_type = null
  }]

  managed_rules = [{
    exclusion = [{
      match_variable          = null
      selector                = null
      selector_match_operator = null
    }]
    managed_rule_set = [{
      rule_group_override = [{
        disabled_rules  = []
        rule_group_name = null
      }]
      type    = null
      version = null
    }]
  }]

  policy_settings = [{
    enabled = null
    mode    = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
