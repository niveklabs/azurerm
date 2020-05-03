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

variable "protocols" {
  description = "(optional)"
  type        = set(string)
  default     = null
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

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "volume_path" {
  description = "(required)"
  type        = string
}

variable "export_policy_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 5"
  type = set(object(
    {
      allowed_clients   = set(string)
      cifs_enabled      = bool
      nfsv3_enabled     = bool
      nfsv4_enabled     = bool
      protocols_enabled = list(string)
      rule_index        = number
      unix_read_only    = bool
      unix_read_write   = bool
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

