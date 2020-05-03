variable "default_action" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ip_rules" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "network_rules" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      ignore_missing_vnet_service_endpoint = bool
      subnet_id                            = string
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

