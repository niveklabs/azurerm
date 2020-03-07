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

variable "edition" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "elastic_pool_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "max_size_bytes" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "read_scale" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "requested_service_objective_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "requested_service_objective_name" {
  description = "(optional)"
  type        = string
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

variable "server_name" {
  description = "(required)"
  type        = string
}

variable "source_database_deletion_date" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_database_id" {
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

variable "import" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      administrator_login          = string
      administrator_login_password = string
      authentication_type          = string
      operation_mode               = string
      storage_key                  = string
      storage_key_type             = string
      storage_uri                  = string
    }
  ))
  default = []
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

