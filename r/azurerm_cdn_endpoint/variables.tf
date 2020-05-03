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

variable "delivery_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      cache_expiration_action = list(object(
        {
          behavior = string
          duration = string
        }
      ))
      cache_key_query_string_action = list(object(
        {
          behavior   = string
          parameters = string
        }
      ))
      cookies_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          selector         = string
          transforms       = list(string)
        }
      ))
      device_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
        }
      ))
      http_version_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
        }
      ))
      modify_request_header_action = list(object(
        {
          action = string
          name   = string
          value  = string
        }
      ))
      modify_response_header_action = list(object(
        {
          action = string
          name   = string
          value  = string
        }
      ))
      name  = string
      order = number
      post_arg_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          selector         = string
          transforms       = list(string)
        }
      ))
      query_string_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      remote_address_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
        }
      ))
      request_body_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      request_header_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          selector         = string
          transforms       = list(string)
        }
      ))
      request_method_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
        }
      ))
      request_scheme_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
        }
      ))
      request_uri_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      url_file_extension_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      url_file_name_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      url_path_condition = list(object(
        {
          match_values     = set(string)
          negate_condition = bool
          operator         = string
          transforms       = list(string)
        }
      ))
      url_redirect_action = list(object(
        {
          fragment      = string
          hostname      = string
          path          = string
          protocol      = string
          query_string  = string
          redirect_type = string
        }
      ))
      url_rewrite_action = list(object(
        {
          destination             = string
          preserve_unmatched_path = bool
          source_pattern          = string
        }
      ))
    }
  ))
  default = []
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

variable "global_delivery_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cache_expiration_action = list(object(
        {
          behavior = string
          duration = string
        }
      ))
      cache_key_query_string_action = list(object(
        {
          behavior   = string
          parameters = string
        }
      ))
      modify_request_header_action = list(object(
        {
          action = string
          name   = string
          value  = string
        }
      ))
      modify_response_header_action = list(object(
        {
          action = string
          name   = string
          value  = string
        }
      ))
      url_redirect_action = list(object(
        {
          fragment      = string
          hostname      = string
          path          = string
          protocol      = string
          query_string  = string
          redirect_type = string
        }
      ))
      url_rewrite_action = list(object(
        {
          destination             = string
          preserve_unmatched_path = bool
          source_pattern          = string
        }
      ))
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

