terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_action_group" "this" {
  enabled             = var.enabled
  name                = var.name
  resource_group_name = var.resource_group_name
  short_name          = var.short_name
  tags                = var.tags

  dynamic "arm_role_receiver" {
    for_each = var.arm_role_receiver
    content {
      name                    = arm_role_receiver.value["name"]
      role_id                 = arm_role_receiver.value["role_id"]
      use_common_alert_schema = arm_role_receiver.value["use_common_alert_schema"]
    }
  }

  dynamic "automation_runbook_receiver" {
    for_each = var.automation_runbook_receiver
    content {
      automation_account_id   = automation_runbook_receiver.value["automation_account_id"]
      is_global_runbook       = automation_runbook_receiver.value["is_global_runbook"]
      name                    = automation_runbook_receiver.value["name"]
      runbook_name            = automation_runbook_receiver.value["runbook_name"]
      service_uri             = automation_runbook_receiver.value["service_uri"]
      use_common_alert_schema = automation_runbook_receiver.value["use_common_alert_schema"]
      webhook_resource_id     = automation_runbook_receiver.value["webhook_resource_id"]
    }
  }

  dynamic "azure_app_push_receiver" {
    for_each = var.azure_app_push_receiver
    content {
      email_address = azure_app_push_receiver.value["email_address"]
      name          = azure_app_push_receiver.value["name"]
    }
  }

  dynamic "azure_function_receiver" {
    for_each = var.azure_function_receiver
    content {
      function_app_resource_id = azure_function_receiver.value["function_app_resource_id"]
      function_name            = azure_function_receiver.value["function_name"]
      http_trigger_url         = azure_function_receiver.value["http_trigger_url"]
      name                     = azure_function_receiver.value["name"]
      use_common_alert_schema  = azure_function_receiver.value["use_common_alert_schema"]
    }
  }

  dynamic "email_receiver" {
    for_each = var.email_receiver
    content {
      email_address           = email_receiver.value["email_address"]
      name                    = email_receiver.value["name"]
      use_common_alert_schema = email_receiver.value["use_common_alert_schema"]
    }
  }

  dynamic "itsm_receiver" {
    for_each = var.itsm_receiver
    content {
      connection_id        = itsm_receiver.value["connection_id"]
      name                 = itsm_receiver.value["name"]
      region               = itsm_receiver.value["region"]
      ticket_configuration = itsm_receiver.value["ticket_configuration"]
      workspace_id         = itsm_receiver.value["workspace_id"]
    }
  }

  dynamic "logic_app_receiver" {
    for_each = var.logic_app_receiver
    content {
      callback_url            = logic_app_receiver.value["callback_url"]
      name                    = logic_app_receiver.value["name"]
      resource_id             = logic_app_receiver.value["resource_id"]
      use_common_alert_schema = logic_app_receiver.value["use_common_alert_schema"]
    }
  }

  dynamic "sms_receiver" {
    for_each = var.sms_receiver
    content {
      country_code = sms_receiver.value["country_code"]
      name         = sms_receiver.value["name"]
      phone_number = sms_receiver.value["phone_number"]
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

  dynamic "voice_receiver" {
    for_each = var.voice_receiver
    content {
      country_code = voice_receiver.value["country_code"]
      name         = voice_receiver.value["name"]
      phone_number = voice_receiver.value["phone_number"]
    }
  }

  dynamic "webhook_receiver" {
    for_each = var.webhook_receiver
    content {
      name                    = webhook_receiver.value["name"]
      service_uri             = webhook_receiver.value["service_uri"]
      use_common_alert_schema = webhook_receiver.value["use_common_alert_schema"]
    }
  }

}

