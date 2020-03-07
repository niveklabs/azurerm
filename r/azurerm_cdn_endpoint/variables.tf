variable "content_types_to_compress" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "is_compression_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "is_http_allowed" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "is_https_allowed" {
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

variable "optimization_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "origin_host_header" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "origin_path" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "probe_path" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "profile_name" {
  description = "(required)"
  type        = string
}

variable "querystring_caching_behaviour" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "geo_filter" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      action        = string
      country_codes = list(string)
      relative_path = string
    }
  ))
  default = []
}

variable "origin" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      host_name  = string
      http_port  = number
      https_port = number
      name       = string
    }
  ))
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

