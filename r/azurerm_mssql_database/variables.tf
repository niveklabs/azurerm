variable "auto_pause_delay_in_minutes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "collation" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "create_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "creation_source_database_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "elastic_pool_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "license_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "max_size_gb" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "min_capacity" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "read_replica_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "read_scale" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "restore_point_in_time" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sample_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "server_id" {
  description = "(required)"
  type        = string
}

variable "sku_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "zone_redundant" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "threat_detection_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disabled_alerts            = set(string)
      email_account_admins       = string
      email_addresses            = set(string)
      retention_days             = number
      state                      = string
      storage_account_access_key = string
      storage_endpoint           = string
      use_server_default         = string
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

