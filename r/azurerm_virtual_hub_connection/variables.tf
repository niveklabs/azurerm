variable "hub_to_vitual_network_traffic_allowed" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "internet_security_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "remote_virtual_network_id" {
  description = "(required)"
  type        = string
}

variable "virtual_hub_id" {
  description = "(required)"
  type        = string
}

variable "vitual_network_to_hub_gateways_traffic_allowed" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
    }
  ))
  default = []
}

