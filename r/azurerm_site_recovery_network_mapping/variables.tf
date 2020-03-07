variable "name" {
  description = "(required)"
  type        = string
}

variable "recovery_vault_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "source_network_id" {
  description = "(required)"
  type        = string
}

variable "source_recovery_fabric_name" {
  description = "(required)"
  type        = string
}

variable "target_network_id" {
  description = "(required)"
  type        = string
}

variable "target_recovery_fabric_name" {
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

