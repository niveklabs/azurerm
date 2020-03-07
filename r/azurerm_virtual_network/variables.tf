variable "address_space" {
  description = "(required)"
  type        = list(string)
}

variable "dns_servers" {
  description = "(optional)"
  type        = list(string)
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

variable "ddos_protection_plan" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable = bool
      id     = string
    }
  ))
  default = []
}

variable "subnet" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      address_prefix = string
      id             = string
      name           = string
      security_group = string
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

