variable "auto_mitigate" {
  description = "(optional)"
  type        = bool
  default     = null
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
  description = "(optional)"
  type        = string
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

variable "scopes" {
  description = "(required)"
  type        = set(string)
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

variable "window_size" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "action" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      action_group_id    = string
      webhook_properties = map(string)
    }
  ))
  default = []
}

variable "criteria" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      aggregation = string
      dimension = list(object(
        {
          name     = string
          operator = string
          values   = list(string)
        }
      ))
      metric_name      = string
      metric_namespace = string
      operator         = string
      threshold        = number
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

