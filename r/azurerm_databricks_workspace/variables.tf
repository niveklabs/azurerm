variable "location" {
  description = "(required)"
  type        = string
}

variable "managed_resource_group_name" {
  description = "(optional)"
  type        = string
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

variable "sku" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "custom_parameters" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      no_public_ip        = bool
      private_subnet_name = string
      public_subnet_name  = string
      virtual_network_id  = string
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

