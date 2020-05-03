variable "administrator_login" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "administrator_login_password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "auto_grow_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "backup_retention_days" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "create_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "creation_source_server_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "geo_redundant_backup_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "infrastructure_encryption_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "public_network_access_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "restore_point_in_time" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sku_name" {
  description = "(required)"
  type        = string
}

variable "ssl_enforcement" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ssl_enforcement_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "ssl_minimal_tls_version_enforced" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_mb" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "version" {
  description = "(required)"
  type        = string
}

variable "storage_profile" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auto_grow             = string
      backup_retention_days = number
      geo_redundant_backup  = string
      storage_mb            = number
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

