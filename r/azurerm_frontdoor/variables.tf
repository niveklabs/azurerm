variable "enforce_backend_pools_certificate_name_check" {
  description = "(required)"
  type        = bool
}

variable "friendly_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "load_balancer_enabled" {
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

variable "backend_pool" {
  description = "nested mode: NestingList, min items: 1, max items: 50"
  type = set(object(
    {
      backend = list(object(
        {
          address     = string
          enabled     = bool
          host_header = string
          http_port   = number
          https_port  = number
          priority    = number
          weight      = number
        }
      ))
      health_probe_name   = string
      id                  = string
      load_balancing_name = string
      name                = string
    }
  ))
}

variable "backend_pool_health_probe" {
  description = "nested mode: NestingList, min items: 1, max items: 5000"
  type = set(object(
    {
      id                  = string
      interval_in_seconds = number
      name                = string
      path                = string
      protocol            = string
    }
  ))
}

variable "backend_pool_load_balancing" {
  description = "nested mode: NestingList, min items: 1, max items: 5000"
  type = set(object(
    {
      additional_latency_milliseconds = number
      id                              = string
      name                            = string
      sample_size                     = number
      successful_samples_required     = number
    }
  ))
}

variable "frontend_endpoint" {
  description = "nested mode: NestingList, min items: 1, max items: 100"
  type = set(object(
    {
      custom_https_configuration = list(object(
        {
          azure_key_vault_certificate_secret_name    = string
          azure_key_vault_certificate_secret_version = string
          azure_key_vault_certificate_vault_id       = string
          certificate_source                         = string
          minimum_tls_version                        = string
          provisioning_state                         = string
          provisioning_substate                      = string
        }
      ))
      custom_https_provisioning_enabled       = bool
      host_name                               = string
      id                                      = string
      name                                    = string
      session_affinity_enabled                = bool
      session_affinity_ttl_seconds            = number
      web_application_firewall_policy_link_id = string
    }
  ))
}

variable "routing_rule" {
  description = "nested mode: NestingList, min items: 1, max items: 100"
  type = set(object(
    {
      accepted_protocols = list(string)
      enabled            = bool
      forwarding_configuration = list(object(
        {
          backend_pool_name                     = string
          cache_enabled                         = bool
          cache_query_parameter_strip_directive = string
          cache_use_dynamic_compression         = bool
          custom_forwarding_path                = string
          forwarding_protocol                   = string
        }
      ))
      frontend_endpoints = list(string)
      id                 = string
      name               = string
      patterns_to_match  = list(string)
      redirect_configuration = list(object(
        {
          custom_fragment     = string
          custom_host         = string
          custom_path         = string
          custom_query_string = string
          redirect_protocol   = string
          redirect_type       = string
        }
      ))
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

