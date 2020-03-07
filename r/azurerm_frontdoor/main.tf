terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_frontdoor" "this" {
  enforce_backend_pools_certificate_name_check = var.enforce_backend_pools_certificate_name_check
  friendly_name                                = var.friendly_name
  load_balancer_enabled                        = var.load_balancer_enabled
  location                                     = var.location
  name                                         = var.name
  resource_group_name                          = var.resource_group_name
  tags                                         = var.tags

  dynamic "backend_pool" {
    for_each = var.backend_pool
    content {
      health_probe_name   = backend_pool.value["health_probe_name"]
      load_balancing_name = backend_pool.value["load_balancing_name"]
      name                = backend_pool.value["name"]

      dynamic "backend" {
        for_each = backend_pool.value.backend
        content {
          address     = backend.value["address"]
          enabled     = backend.value["enabled"]
          host_header = backend.value["host_header"]
          http_port   = backend.value["http_port"]
          https_port  = backend.value["https_port"]
          priority    = backend.value["priority"]
          weight      = backend.value["weight"]
        }
      }

    }
  }

  dynamic "backend_pool_health_probe" {
    for_each = var.backend_pool_health_probe
    content {
      interval_in_seconds = backend_pool_health_probe.value["interval_in_seconds"]
      name                = backend_pool_health_probe.value["name"]
      path                = backend_pool_health_probe.value["path"]
      protocol            = backend_pool_health_probe.value["protocol"]
    }
  }

  dynamic "backend_pool_load_balancing" {
    for_each = var.backend_pool_load_balancing
    content {
      additional_latency_milliseconds = backend_pool_load_balancing.value["additional_latency_milliseconds"]
      name                            = backend_pool_load_balancing.value["name"]
      sample_size                     = backend_pool_load_balancing.value["sample_size"]
      successful_samples_required     = backend_pool_load_balancing.value["successful_samples_required"]
    }
  }

  dynamic "frontend_endpoint" {
    for_each = var.frontend_endpoint
    content {
      custom_https_provisioning_enabled       = frontend_endpoint.value["custom_https_provisioning_enabled"]
      host_name                               = frontend_endpoint.value["host_name"]
      name                                    = frontend_endpoint.value["name"]
      session_affinity_enabled                = frontend_endpoint.value["session_affinity_enabled"]
      session_affinity_ttl_seconds            = frontend_endpoint.value["session_affinity_ttl_seconds"]
      web_application_firewall_policy_link_id = frontend_endpoint.value["web_application_firewall_policy_link_id"]

      dynamic "custom_https_configuration" {
        for_each = frontend_endpoint.value.custom_https_configuration
        content {
          azure_key_vault_certificate_secret_name    = custom_https_configuration.value["azure_key_vault_certificate_secret_name"]
          azure_key_vault_certificate_secret_version = custom_https_configuration.value["azure_key_vault_certificate_secret_version"]
          azure_key_vault_certificate_vault_id       = custom_https_configuration.value["azure_key_vault_certificate_vault_id"]
          certificate_source                         = custom_https_configuration.value["certificate_source"]
        }
      }

    }
  }

  dynamic "routing_rule" {
    for_each = var.routing_rule
    content {
      accepted_protocols = routing_rule.value["accepted_protocols"]
      enabled            = routing_rule.value["enabled"]
      frontend_endpoints = routing_rule.value["frontend_endpoints"]
      name               = routing_rule.value["name"]
      patterns_to_match  = routing_rule.value["patterns_to_match"]

      dynamic "forwarding_configuration" {
        for_each = routing_rule.value.forwarding_configuration
        content {
          backend_pool_name                     = forwarding_configuration.value["backend_pool_name"]
          cache_enabled                         = forwarding_configuration.value["cache_enabled"]
          cache_query_parameter_strip_directive = forwarding_configuration.value["cache_query_parameter_strip_directive"]
          cache_use_dynamic_compression         = forwarding_configuration.value["cache_use_dynamic_compression"]
          custom_forwarding_path                = forwarding_configuration.value["custom_forwarding_path"]
          forwarding_protocol                   = forwarding_configuration.value["forwarding_protocol"]
        }
      }

      dynamic "redirect_configuration" {
        for_each = routing_rule.value.redirect_configuration
        content {
          custom_fragment     = redirect_configuration.value["custom_fragment"]
          custom_host         = redirect_configuration.value["custom_host"]
          custom_path         = redirect_configuration.value["custom_path"]
          custom_query_string = redirect_configuration.value["custom_query_string"]
          redirect_protocol   = redirect_configuration.value["redirect_protocol"]
          redirect_type       = redirect_configuration.value["redirect_type"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

