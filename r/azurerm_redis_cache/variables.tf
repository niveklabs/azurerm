variable "capacity" {
  description = "(required)"
  type        = number
}

variable "enable_non_ssl_port" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "family" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "minimum_tls_version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "private_static_ip_address" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "shard_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "sku_name" {
  description = "(required)"
  type        = string
}

variable "subnet_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "zones" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "patch_schedule" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      day_of_week    = string
      start_hour_utc = number
    }
  ))
  default = []
}

variable "redis_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      aof_backup_enabled              = bool
      aof_storage_connection_string_0 = string
      aof_storage_connection_string_1 = string
      enable_authentication           = bool
      maxclients                      = number
      maxfragmentationmemory_reserved = number
      maxmemory_delta                 = number
      maxmemory_policy                = string
      maxmemory_reserved              = number
      notify_keyspace_events          = string
      rdb_backup_enabled              = bool
      rdb_backup_frequency            = number
      rdb_backup_max_snapshot_count   = number
      rdb_storage_connection_string   = string
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

