variable "access" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "destination_address_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "destination_address_prefixes" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "destination_application_security_group_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "destination_port_range" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "destination_port_ranges" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "direction" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_security_group_name" {
  description = "(required)"
  type        = string
}

variable "priority" {
  description = "(required)"
  type        = number
}

variable "protocol" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "source_address_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_address_prefixes" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "source_application_security_group_ids" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "source_port_range" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_port_ranges" {
  description = "(optional)"
  type        = set(string)
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

