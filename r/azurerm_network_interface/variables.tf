variable "dns_servers" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "enable_accelerated_networking" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_ip_forwarding" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "internal_dns_name_label" {
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

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "ip_configuration" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      name                          = string
      primary                       = bool
      private_ip_address            = string
      private_ip_address_allocation = string
      private_ip_address_version    = string
      public_ip_address_id          = string
      subnet_id                     = string
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

