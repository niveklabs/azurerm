variable "access_tier" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "account_kind" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "account_replication_type" {
  description = "(required)"
  type        = string
}

variable "account_tier" {
  description = "(required)"
  type        = string
}

variable "enable_https_traffic_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "is_hns_enabled" {
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

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "blob_properties" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cors_rule = list(object(
        {
          allowed_headers    = list(string)
          allowed_methods    = list(string)
          allowed_origins    = list(string)
          exposed_headers    = list(string)
          max_age_in_seconds = number
        }
      ))
      delete_retention_policy = list(object(
        {
          days = number
        }
      ))
    }
  ))
  default = []
}

variable "custom_domain" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      name          = string
      use_subdomain = bool
    }
  ))
  default = []
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      principal_id = string
      tenant_id    = string
      type         = string
    }
  ))
  default = []
}

variable "network_rules" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      bypass                     = set(string)
      default_action             = string
      ip_rules                   = set(string)
      virtual_network_subnet_ids = set(string)
    }
  ))
  default = []
}

variable "queue_properties" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cors_rule = list(object(
        {
          allowed_headers    = list(string)
          allowed_methods    = list(string)
          allowed_origins    = list(string)
          exposed_headers    = list(string)
          max_age_in_seconds = number
        }
      ))
      hour_metrics = list(object(
        {
          enabled               = bool
          include_apis          = bool
          retention_policy_days = number
          version               = string
        }
      ))
      logging = list(object(
        {
          delete                = bool
          read                  = bool
          retention_policy_days = number
          version               = string
          write                 = bool
        }
      ))
      minute_metrics = list(object(
        {
          enabled               = bool
          include_apis          = bool
          retention_policy_days = number
          version               = string
        }
      ))
    }
  ))
  default = []
}

variable "static_website" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      error_404_document = string
      index_document     = string
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

