variable "backend_address_pool_id" {
  description = "(required)"
  type        = string
}

variable "ip_configuration_name" {
  description = "(required)"
  type        = string
}

variable "network_interface_id" {
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

