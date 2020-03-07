terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_cdn_endpoint" "this" {
  content_types_to_compress     = var.content_types_to_compress
  is_compression_enabled        = var.is_compression_enabled
  is_http_allowed               = var.is_http_allowed
  is_https_allowed              = var.is_https_allowed
  location                      = var.location
  name                          = var.name
  optimization_type             = var.optimization_type
  origin_host_header            = var.origin_host_header
  origin_path                   = var.origin_path
  probe_path                    = var.probe_path
  profile_name                  = var.profile_name
  querystring_caching_behaviour = var.querystring_caching_behaviour
  resource_group_name           = var.resource_group_name
  tags                          = var.tags

  dynamic "geo_filter" {
    for_each = var.geo_filter
    content {
      action        = geo_filter.value["action"]
      country_codes = geo_filter.value["country_codes"]
      relative_path = geo_filter.value["relative_path"]
    }
  }

  dynamic "origin" {
    for_each = var.origin
    content {
      host_name  = origin.value["host_name"]
      http_port  = origin.value["http_port"]
      https_port = origin.value["https_port"]
      name       = origin.value["name"]
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

