variable "account_name" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "pool_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "service_level" {
  description = "(required)"
  type        = string
}

variable "storage_quota_in_gb" {
  description = "(required)"
  type        = number
}

variable "subnet_id" {
  description = "(required)"
  type        = string
}

variable "volume_path" {
  description = "(required)"
  type        = string
}

variable "export_policy_rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 5"
  type = set(object(
    {
      allowed_clients = set(string)
      cifs_enabled    = bool
      nfsv3_enabled   = bool
      nfsv4_enabled   = bool
      rule_index      = number
      unix_read_only  = bool
      unix_read_write = bool
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

