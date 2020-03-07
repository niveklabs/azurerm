variable "automation_account_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "expiry_time" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "frequency" {
  description = "(required)"
  type        = string
}

variable "interval" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "month_days" {
  description = "(optional)"
  type        = set(number)
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

variable "start_time" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "timezone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "week_days" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "monthly_occurrence" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      day        = string
      occurrence = number
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

