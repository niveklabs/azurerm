variable "auto_delete_on_idle" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dead_lettering_on_message_expiration" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "default_message_ttl" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "duplicate_detection_history_time_window" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_express" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_partitioning" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "lock_duration" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "max_delivery_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "max_size_in_megabytes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "requires_duplicate_detection" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "requires_session" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
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

