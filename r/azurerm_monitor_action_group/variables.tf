variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "short_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "arm_role_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name                    = string
      role_id                 = string
      use_common_alert_schema = bool
    }
  ))
  default = []
}

variable "automation_runbook_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      automation_account_id   = string
      is_global_runbook       = bool
      name                    = string
      runbook_name            = string
      service_uri             = string
      use_common_alert_schema = bool
      webhook_resource_id     = string
    }
  ))
  default = []
}

variable "azure_app_push_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      email_address = string
      name          = string
    }
  ))
  default = []
}

variable "azure_function_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      function_app_resource_id = string
      function_name            = string
      http_trigger_url         = string
      name                     = string
      use_common_alert_schema  = bool
    }
  ))
  default = []
}

variable "email_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      email_address           = string
      name                    = string
      use_common_alert_schema = bool
    }
  ))
  default = []
}

variable "itsm_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      connection_id        = string
      name                 = string
      region               = string
      ticket_configuration = string
      workspace_id         = string
    }
  ))
  default = []
}

variable "logic_app_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      callback_url            = string
      name                    = string
      resource_id             = string
      use_common_alert_schema = bool
    }
  ))
  default = []
}

variable "sms_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      country_code = string
      name         = string
      phone_number = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

variable "voice_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      country_code = string
      name         = string
      phone_number = string
    }
  ))
  default = []
}

variable "webhook_receiver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name                    = string
      service_uri             = string
      use_common_alert_schema = bool
    }
  ))
  default = []
}

