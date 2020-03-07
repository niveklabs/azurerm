module "azurerm_monitor_action_group" {
  source = "./azurerm/r/azurerm_monitor_action_group"

  enabled             = null
  name                = null
  resource_group_name = null
  short_name          = null
  tags                = {}

  arm_role_receiver = [{
    name                    = null
    role_id                 = null
    use_common_alert_schema = null
  }]

  automation_runbook_receiver = [{
    automation_account_id   = null
    is_global_runbook       = null
    name                    = null
    runbook_name            = null
    service_uri             = null
    use_common_alert_schema = null
    webhook_resource_id     = null
  }]

  azure_app_push_receiver = [{
    email_address = null
    name          = null
  }]

  azure_function_receiver = [{
    function_app_resource_id = null
    function_name            = null
    http_trigger_url         = null
    name                     = null
    use_common_alert_schema  = null
  }]

  email_receiver = [{
    email_address           = null
    name                    = null
    use_common_alert_schema = null
  }]

  itsm_receiver = [{
    connection_id        = null
    name                 = null
    region               = null
    ticket_configuration = null
    workspace_id         = null
  }]

  logic_app_receiver = [{
    callback_url            = null
    name                    = null
    resource_id             = null
    use_common_alert_schema = null
  }]

  sms_receiver = [{
    country_code = null
    name         = null
    phone_number = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  voice_receiver = [{
    country_code = null
    name         = null
    phone_number = null
  }]

  webhook_receiver = [{
    name                    = null
    service_uri             = null
    use_common_alert_schema = null
  }]
}
