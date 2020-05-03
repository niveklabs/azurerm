variable "authorized_resource_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "data_source_id" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "frequency" {
  description = "(required)"
  type        = number
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "query" {
  description = "(required)"
  type        = string
}

variable "query_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "severity" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "throttling" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "time_window" {
  description = "(required)"
  type        = number
}

variable "action" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      action_group           = set(string)
      custom_webhook_payload = string
      email_subject          = string
    }
  ))
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

variable "trigger" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      metric_trigger = list(object(
        {
          metric_column       = string
          metric_trigger_type = string
          operator            = string
          threshold           = number
        }
      ))
      operator  = string
      threshold = number
    }
  ))
}

