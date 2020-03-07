module "azurerm_frontdoor_firewall_policy" {
  source = "./azurerm/r/azurerm_frontdoor_firewall_policy"

  custom_block_response_body        = null
  custom_block_response_status_code = null
  enabled                           = null
  mode                              = null
  name                              = null
  redirect_url                      = null
  resource_group_name               = null
  tags                              = {}

  custom_rule = [{
    action  = null
    enabled = null
    match_condition = [{
      match_values       = []
      match_variable     = null
      negation_condition = null
      operator           = null
      selector           = null
      transforms         = []
    }]
    name                           = null
    priority                       = null
    rate_limit_duration_in_minutes = null
    rate_limit_threshold           = null
    type                           = null
  }]

  managed_rule = [{
    exclusion = [{
      match_variable = null
      operator       = null
      selector       = null
    }]
    override = [{
      exclusion = [{
        match_variable = null
        operator       = null
        selector       = null
      }]
      rule = [{
        action  = null
        enabled = null
        exclusion = [{
          match_variable = null
          operator       = null
          selector       = null
        }]
        rule_id = null
      }]
      rule_group_name = null
    }]
    type    = null
    version = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
