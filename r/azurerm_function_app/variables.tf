variable "app_service_plan_id" {
  description = "(required)"
  type        = string
}

variable "app_settings" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "client_affinity_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enable_builtin_logging" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "https_only" {
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

variable "storage_connection_string" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "auth_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      active_directory = list(object(
        {
          allowed_audiences = list(string)
          client_id         = string
          client_secret     = string
        }
      ))
      additional_login_params        = map(string)
      allowed_external_redirect_urls = list(string)
      default_provider               = string
      enabled                        = bool
      facebook = list(object(
        {
          app_id       = string
          app_secret   = string
          oauth_scopes = list(string)
        }
      ))
      google = list(object(
        {
          client_id     = string
          client_secret = string
          oauth_scopes  = list(string)
        }
      ))
      issuer = string
      microsoft = list(object(
        {
          client_id     = string
          client_secret = string
          oauth_scopes  = list(string)
        }
      ))
      runtime_version               = string
      token_refresh_extension_hours = number
      token_store_enabled           = bool
      twitter = list(object(
        {
          consumer_key    = string
          consumer_secret = string
        }
      ))
      unauthenticated_client_action = string
    }
  ))
  default = []
}

variable "connection_string" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      type  = string
      value = string
    }
  ))
  default = []
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      identity_ids = list(string)
      principal_id = string
      tenant_id    = string
      type         = string
    }
  ))
  default = []
}

variable "site_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      always_on = bool
      cors = list(object(
        {
          allowed_origins     = set(string)
          support_credentials = bool
        }
      ))
      ftps_state    = string
      http2_enabled = bool
      ip_restriction = list(object(
        {
          ip_address = string
          subnet_id  = string
        }
      ))
      linux_fx_version          = string
      min_tls_version           = string
      use_32_bit_worker_process = bool
      websockets_enabled        = bool
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

