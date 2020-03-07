variable "application_type" {
  description = "(required)"
  type        = string
}

variable "daily_data_cap_in_gb" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "daily_data_cap_notifications_disabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "retention_in_days" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "sampling_percentage" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
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

