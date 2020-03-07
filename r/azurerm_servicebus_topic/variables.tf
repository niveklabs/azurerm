variable "auto_delete_on_idle" {
  description = "(optional)"
  type        = string
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

variable "enable_batched_operations" {
  description = "(optional)"
  type        = bool
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

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "status" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "support_ordering" {
  description = "(optional)"
  type        = bool
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

