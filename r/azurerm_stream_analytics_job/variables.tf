variable "compatibility_level" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "data_locale" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "events_late_arrival_max_delay_in_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "events_out_of_order_max_delay_in_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "events_out_of_order_policy" {
  description = "(optional)"
  type        = string
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

variable "output_error_policy" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "streaming_units" {
  description = "(required)"
  type        = number
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "transformation_query" {
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

