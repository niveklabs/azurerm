variable "categories" {
  description = "(required)"
  type        = set(string)
}

variable "locations" {
  description = "(required)"
  type        = set(string)
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "servicebus_rule_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "retention_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      days    = number
      enabled = bool
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

