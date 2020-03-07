variable "allocated_outbound_ports" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "backend_address_pool_id" {
  description = "(required)"
  type        = string
}

variable "enable_tcp_reset" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "idle_timeout_in_minutes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "loadbalancer_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "protocol" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "frontend_ip_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      id   = string
      name = string
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

