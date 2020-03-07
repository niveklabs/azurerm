module "azurerm_web_application_firewall_policy" {
  source = "./azurerm/r/azurerm_web_application_firewall_policy"

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
