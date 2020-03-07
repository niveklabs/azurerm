variable "client_id" {
  description = "(required)"
  type        = string
}

variable "cluster_name" {
  description = "(required)"
  type        = string
}

variable "database_name" {
  description = "(required)"
  type        = string
}

variable "object_id" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "type" {
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

