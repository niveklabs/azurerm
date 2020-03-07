variable "backend_port" {
  description = "(required)"
  type        = number
}

variable "frontend_ip_configuration_name" {
  description = "(required)"
  type        = string
}

variable "frontend_port_end" {
  description = "(required)"
  type        = number
}

variable "frontend_port_start" {
  description = "(required)"
  type        = number
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

