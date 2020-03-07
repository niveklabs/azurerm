variable "bypass" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "default_action" {
  description = "(required)"
  type        = string
}

variable "ip_rules" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "storage_account_name" {
  description = "(required)"
  type        = string
}

variable "virtual_network_subnet_ids" {
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

