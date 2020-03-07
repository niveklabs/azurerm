variable "idle_timeout_in_minutes" {
  description = "(optional)"
  type        = number
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

variable "public_ip_address_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "public_ip_prefix_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "sku_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "zones" {
  description = "(optional)"
  type        = list(string)
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

