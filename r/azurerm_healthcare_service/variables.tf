variable "access_policy_object_ids" {
  description = "(required)"
  type        = set(string)
}

variable "cosmosdb_throughput" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "kind" {
  description = "(optional)"
  type        = string
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

variable "authentication_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      audience            = string
      authority           = string
      smart_proxy_enabled = bool
    }
  ))
  default = []
}

variable "cors_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allow_credentials  = bool
      allowed_headers    = set(string)
      allowed_methods    = list(string)
      allowed_origins    = set(string)
      max_age_in_seconds = number
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

