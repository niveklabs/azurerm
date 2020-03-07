variable "action" {
  description = "(required)"
  type        = string
}

variable "azure_firewall_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "priority" {
  description = "(required)"
  type        = number
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "rule" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      description           = string
      destination_addresses = set(string)
      destination_ports     = set(string)
      name                  = string
      protocols             = set(string)
      source_addresses      = set(string)
      translated_address    = string
      translated_port       = string
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

