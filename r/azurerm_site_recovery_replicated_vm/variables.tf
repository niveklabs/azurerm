variable "managed_disk" {
  description = "(optional)"
  type = set(object(
    {
      disk_id                    = string
      staging_storage_account_id = string
      target_disk_type           = string
      target_replica_disk_type   = string
      target_resource_group_id   = string
    }
  ))
  default = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "recovery_replication_policy_id" {
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

variable "source_recovery_fabric_name" {
  description = "(required)"
  type        = string
}

variable "source_recovery_protection_container_name" {
  description = "(required)"
  type        = string
}

variable "source_vm_id" {
  description = "(required)"
  type        = string
}

variable "target_availability_set_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "target_recovery_fabric_id" {
  description = "(required)"
  type        = string
}

variable "target_recovery_protection_container_id" {
  description = "(required)"
  type        = string
}

variable "target_resource_group_id" {
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

