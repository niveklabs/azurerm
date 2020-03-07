variable "auto_inflate_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "capacity" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "maximum_throughput_units" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_rulesets" {
  description = "(optional)"
  type = list(object(
    {
      default_action = string
      ip_rule = list(object(
        {
          action  = string
          ip_mask = string
        }
      ))
      virtual_network_rule = list(object(
        {
          ignore_missing_virtual_network_service_endpoint = bool
          subnet_id                                       = string
        }
      ))
    }
  ))
  default = null
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

