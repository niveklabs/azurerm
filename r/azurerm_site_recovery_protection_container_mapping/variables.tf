variable "name" {
  description = "(required)"
  type        = string
}

variable "recovery_fabric_name" {
  description = "(required)"
  type        = string
}

variable "recovery_replication_policy_id" {
  description = "(required)"
  type        = string
}

variable "recovery_source_protection_container_name" {
  description = "(required)"
  type        = string
}

variable "recovery_target_protection_container_id" {
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

