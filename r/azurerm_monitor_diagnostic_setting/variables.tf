variable "eventhub_authorization_rule_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "eventhub_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "log_analytics_destination_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "log_analytics_workspace_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "storage_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "target_resource_id" {
  description = "(required)"
  type        = string
}

variable "log" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      category = string
      enabled  = bool
      retention_policy = list(object(
        {
          days    = number
          enabled = bool
        }
      ))
    }
  ))
  default = []
}

variable "metric" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      category = string
      enabled  = bool
      retention_policy = list(object(
        {
          days    = number
          enabled = bool
        }
      ))
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

