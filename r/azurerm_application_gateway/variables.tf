variable "enable_http2" {
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

variable "zones" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "authentication_certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      data = string
      id   = string
      name = string
    }
  ))
  default = []
}

variable "autoscale_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_capacity = number
      min_capacity = number
    }
  ))
  default = []
}

variable "backend_address_pool" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      fqdns        = list(string)
      id           = string
      ip_addresses = list(string)
      name         = string
    }
  ))
}

variable "backend_http_settings" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      affinity_cookie_name = string
      authentication_certificate = list(object(
        {
          id   = string
          name = string
        }
      ))
      connection_draining = list(object(
        {
          drain_timeout_sec = number
          enabled           = bool
        }
      ))
      cookie_based_affinity               = string
      host_name                           = string
      id                                  = string
      name                                = string
      path                                = string
      pick_host_name_from_backend_address = bool
      port                                = number
      probe_id                            = string
      probe_name                          = string
      protocol                            = string
      request_timeout                     = number
      trusted_root_certificate_names      = list(string)
    }
  ))
}

variable "custom_error_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      custom_error_page_url = string
      id                    = string
      status_code           = string
    }
  ))
  default = []
}

variable "frontend_ip_configuration" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      id                            = string
      name                          = string
      private_ip_address            = string
      private_ip_address_allocation = string
      public_ip_address_id          = string
      subnet_id                     = string
    }
  ))
}

variable "frontend_port" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      id   = string
      name = string
      port = number
    }
  ))
}

variable "gateway_ip_configuration" {
  description = "nested mode: NestingList, min items: 1, max items: 2"
  type = set(object(
    {
      id        = string
      name      = string
      subnet_id = string
    }
  ))
}

variable "http_listener" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      custom_error_configuration = list(object(
        {
          custom_error_page_url = string
          id                    = string
          status_code           = string
        }
      ))
      frontend_ip_configuration_id   = string
      frontend_ip_configuration_name = string
      frontend_port_id               = string
      frontend_port_name             = string
      host_name                      = string
      id                             = string
      name                           = string
      protocol                       = string
      require_sni                    = bool
      ssl_certificate_id             = string
      ssl_certificate_name           = string
    }
  ))
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      identity_ids = list(string)
      type         = string
    }
  ))
  default = []
}

variable "probe" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      host     = string
      id       = string
      interval = number
      match = list(object(
        {
          body        = string
          status_code = list(string)
        }
      ))
      minimum_servers                           = number
      name                                      = string
      path                                      = string
      pick_host_name_from_backend_http_settings = bool
      protocol                                  = string
      timeout                                   = number
      unhealthy_threshold                       = number
    }
  ))
  default = []
}

variable "redirect_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      id                   = string
      include_path         = bool
      include_query_string = bool
      name                 = string
      redirect_type        = string
      target_listener_id   = string
      target_listener_name = string
      target_url           = string
    }
  ))
  default = []
}

variable "request_routing_rule" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      backend_address_pool_id     = string
      backend_address_pool_name   = string
      backend_http_settings_id    = string
      backend_http_settings_name  = string
      http_listener_id            = string
      http_listener_name          = string
      id                          = string
      name                        = string
      redirect_configuration_id   = string
      redirect_configuration_name = string
      rewrite_rule_set_id         = string
      rewrite_rule_set_name       = string
      rule_type                   = string
      url_path_map_id             = string
      url_path_map_name           = string
    }
  ))
}

variable "rewrite_rule_set" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      id   = string
      name = string
      rewrite_rule = list(object(
        {
          condition = list(object(
            {
              ignore_case = bool
              negate      = bool
              pattern     = string
              variable    = string
            }
          ))
          name = string
          request_header_configuration = list(object(
            {
              header_name  = string
              header_value = string
            }
          ))
          response_header_configuration = list(object(
            {
              header_name  = string
              header_value = string
            }
          ))
          rule_sequence = number
        }
      ))
    }
  ))
  default = []
}

variable "sku" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      capacity = number
      name     = string
      tier     = string
    }
  ))
}

variable "ssl_certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      data             = string
      id               = string
      name             = string
      password         = string
      public_cert_data = string
    }
  ))
  default = []
}

variable "ssl_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      cipher_suites        = list(string)
      disabled_protocols   = list(string)
      min_protocol_version = string
      policy_name          = string
      policy_type          = string
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

variable "trusted_root_certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      data = string
      id   = string
      name = string
    }
  ))
  default = []
}

variable "url_path_map" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      default_backend_address_pool_id     = string
      default_backend_address_pool_name   = string
      default_backend_http_settings_id    = string
      default_backend_http_settings_name  = string
      default_redirect_configuration_id   = string
      default_redirect_configuration_name = string
      default_rewrite_rule_set_id         = string
      default_rewrite_rule_set_name       = string
      id                                  = string
      name                                = string
      path_rule = list(object(
        {
          backend_address_pool_id     = string
          backend_address_pool_name   = string
          backend_http_settings_id    = string
          backend_http_settings_name  = string
          id                          = string
          name                        = string
          paths                       = list(string)
          redirect_configuration_id   = string
          redirect_configuration_name = string
          rewrite_rule_set_id         = string
          rewrite_rule_set_name       = string
        }
      ))
    }
  ))
  default = []
}

variable "waf_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disabled_rule_group = list(object(
        {
          rule_group_name = string
          rules           = list(number)
        }
      ))
      enabled = bool
      exclusion = list(object(
        {
          match_variable          = string
          selector                = string
          selector_match_operator = string
        }
      ))
      file_upload_limit_mb     = number
      firewall_mode            = string
      max_request_body_size_kb = number
      request_body_check       = bool
      rule_set_type            = string
      rule_set_version         = string
    }
  ))
  default = []
}

