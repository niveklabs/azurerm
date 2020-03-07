variable "allow_forwarded_traffic" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "allow_gateway_transit" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "allow_virtual_network_access" {
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

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "use_remote_gateways" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "virtual_network_name" {
  description = "(required)"
  type        = string
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

