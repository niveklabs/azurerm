variable "allocation_method" {
  description = "(required)"
  type        = string
}

variable "domain_name_label" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "idle_timeout_in_minutes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "ip_version" {
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

variable "public_ip_prefix_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "reverse_fqdn" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sku" {
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

