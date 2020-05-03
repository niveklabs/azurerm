terraform {
  required_providers {
    azurerm = ">= 2.7.0"
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

  dynamic "delivery_rule" {
    for_each = var.delivery_rule
    content {
      name  = delivery_rule.value["name"]
      order = delivery_rule.value["order"]

      dynamic "cache_expiration_action" {
        for_each = delivery_rule.value.cache_expiration_action
        content {
          behavior = cache_expiration_action.value["behavior"]
          duration = cache_expiration_action.value["duration"]
        }
      }

      dynamic "cache_key_query_string_action" {
        for_each = delivery_rule.value.cache_key_query_string_action
        content {
          behavior   = cache_key_query_string_action.value["behavior"]
          parameters = cache_key_query_string_action.value["parameters"]
        }
      }

      dynamic "cookies_condition" {
        for_each = delivery_rule.value.cookies_condition
        content {
          match_values     = cookies_condition.value["match_values"]
          negate_condition = cookies_condition.value["negate_condition"]
          operator         = cookies_condition.value["operator"]
          selector         = cookies_condition.value["selector"]
          transforms       = cookies_condition.value["transforms"]
        }
      }

      dynamic "device_condition" {
        for_each = delivery_rule.value.device_condition
        content {
          match_values     = device_condition.value["match_values"]
          negate_condition = device_condition.value["negate_condition"]
          operator         = device_condition.value["operator"]
        }
      }

      dynamic "http_version_condition" {
        for_each = delivery_rule.value.http_version_condition
        content {
          match_values     = http_version_condition.value["match_values"]
          negate_condition = http_version_condition.value["negate_condition"]
          operator         = http_version_condition.value["operator"]
        }
      }

      dynamic "modify_request_header_action" {
        for_each = delivery_rule.value.modify_request_header_action
        content {
          action = modify_request_header_action.value["action"]
          name   = modify_request_header_action.value["name"]
          value  = modify_request_header_action.value["value"]
        }
      }

      dynamic "modify_response_header_action" {
        for_each = delivery_rule.value.modify_response_header_action
        content {
          action = modify_response_header_action.value["action"]
          name   = modify_response_header_action.value["name"]
          value  = modify_response_header_action.value["value"]
        }
      }

      dynamic "post_arg_condition" {
        for_each = delivery_rule.value.post_arg_condition
        content {
          match_values     = post_arg_condition.value["match_values"]
          negate_condition = post_arg_condition.value["negate_condition"]
          operator         = post_arg_condition.value["operator"]
          selector         = post_arg_condition.value["selector"]
          transforms       = post_arg_condition.value["transforms"]
        }
      }

      dynamic "query_string_condition" {
        for_each = delivery_rule.value.query_string_condition
        content {
          match_values     = query_string_condition.value["match_values"]
          negate_condition = query_string_condition.value["negate_condition"]
          operator         = query_string_condition.value["operator"]
          transforms       = query_string_condition.value["transforms"]
        }
      }

      dynamic "remote_address_condition" {
        for_each = delivery_rule.value.remote_address_condition
        content {
          match_values     = remote_address_condition.value["match_values"]
          negate_condition = remote_address_condition.value["negate_condition"]
          operator         = remote_address_condition.value["operator"]
        }
      }

      dynamic "request_body_condition" {
        for_each = delivery_rule.value.request_body_condition
        content {
          match_values     = request_body_condition.value["match_values"]
          negate_condition = request_body_condition.value["negate_condition"]
          operator         = request_body_condition.value["operator"]
          transforms       = request_body_condition.value["transforms"]
        }
      }

      dynamic "request_header_condition" {
        for_each = delivery_rule.value.request_header_condition
        content {
          match_values     = request_header_condition.value["match_values"]
          negate_condition = request_header_condition.value["negate_condition"]
          operator         = request_header_condition.value["operator"]
          selector         = request_header_condition.value["selector"]
          transforms       = request_header_condition.value["transforms"]
        }
      }

      dynamic "request_method_condition" {
        for_each = delivery_rule.value.request_method_condition
        content {
          match_values     = request_method_condition.value["match_values"]
          negate_condition = request_method_condition.value["negate_condition"]
          operator         = request_method_condition.value["operator"]
        }
      }

      dynamic "request_scheme_condition" {
        for_each = delivery_rule.value.request_scheme_condition
        content {
          match_values     = request_scheme_condition.value["match_values"]
          negate_condition = request_scheme_condition.value["negate_condition"]
          operator         = request_scheme_condition.value["operator"]
        }
      }

      dynamic "request_uri_condition" {
        for_each = delivery_rule.value.request_uri_condition
        content {
          match_values     = request_uri_condition.value["match_values"]
          negate_condition = request_uri_condition.value["negate_condition"]
          operator         = request_uri_condition.value["operator"]
          transforms       = request_uri_condition.value["transforms"]
        }
      }

      dynamic "url_file_extension_condition" {
        for_each = delivery_rule.value.url_file_extension_condition
        content {
          match_values     = url_file_extension_condition.value["match_values"]
          negate_condition = url_file_extension_condition.value["negate_condition"]
          operator         = url_file_extension_condition.value["operator"]
          transforms       = url_file_extension_condition.value["transforms"]
        }
      }

      dynamic "url_file_name_condition" {
        for_each = delivery_rule.value.url_file_name_condition
        content {
          match_values     = url_file_name_condition.value["match_values"]
          negate_condition = url_file_name_condition.value["negate_condition"]
          operator         = url_file_name_condition.value["operator"]
          transforms       = url_file_name_condition.value["transforms"]
        }
      }

      dynamic "url_path_condition" {
        for_each = delivery_rule.value.url_path_condition
        content {
          match_values     = url_path_condition.value["match_values"]
          negate_condition = url_path_condition.value["negate_condition"]
          operator         = url_path_condition.value["operator"]
          transforms       = url_path_condition.value["transforms"]
        }
      }

      dynamic "url_redirect_action" {
        for_each = delivery_rule.value.url_redirect_action
        content {
          fragment      = url_redirect_action.value["fragment"]
          hostname      = url_redirect_action.value["hostname"]
          path          = url_redirect_action.value["path"]
          protocol      = url_redirect_action.value["protocol"]
          query_string  = url_redirect_action.value["query_string"]
          redirect_type = url_redirect_action.value["redirect_type"]
        }
      }

      dynamic "url_rewrite_action" {
        for_each = delivery_rule.value.url_rewrite_action
        content {
          destination             = url_rewrite_action.value["destination"]
          preserve_unmatched_path = url_rewrite_action.value["preserve_unmatched_path"]
          source_pattern          = url_rewrite_action.value["source_pattern"]
        }
      }

    }
  }

  dynamic "geo_filter" {
    for_each = var.geo_filter
    content {
      action        = geo_filter.value["action"]
      country_codes = geo_filter.value["country_codes"]
      relative_path = geo_filter.value["relative_path"]
    }
  }

  dynamic "global_delivery_rule" {
    for_each = var.global_delivery_rule
    content {

      dynamic "cache_expiration_action" {
        for_each = global_delivery_rule.value.cache_expiration_action
        content {
          behavior = cache_expiration_action.value["behavior"]
          duration = cache_expiration_action.value["duration"]
        }
      }

      dynamic "cache_key_query_string_action" {
        for_each = global_delivery_rule.value.cache_key_query_string_action
        content {
          behavior   = cache_key_query_string_action.value["behavior"]
          parameters = cache_key_query_string_action.value["parameters"]
        }
      }

      dynamic "modify_request_header_action" {
        for_each = global_delivery_rule.value.modify_request_header_action
        content {
          action = modify_request_header_action.value["action"]
          name   = modify_request_header_action.value["name"]
          value  = modify_request_header_action.value["value"]
        }
      }

      dynamic "modify_response_header_action" {
        for_each = global_delivery_rule.value.modify_response_header_action
        content {
          action = modify_response_header_action.value["action"]
          name   = modify_response_header_action.value["name"]
          value  = modify_response_header_action.value["value"]
        }
      }

      dynamic "url_redirect_action" {
        for_each = global_delivery_rule.value.url_redirect_action
        content {
          fragment      = url_redirect_action.value["fragment"]
          hostname      = url_redirect_action.value["hostname"]
          path          = url_redirect_action.value["path"]
          protocol      = url_redirect_action.value["protocol"]
          query_string  = url_redirect_action.value["query_string"]
          redirect_type = url_redirect_action.value["redirect_type"]
        }
      }

      dynamic "url_rewrite_action" {
        for_each = global_delivery_rule.value.url_rewrite_action
        content {
          destination             = url_rewrite_action.value["destination"]
          preserve_unmatched_path = url_rewrite_action.value["preserve_unmatched_path"]
          source_pattern          = url_rewrite_action.value["source_pattern"]
        }
      }

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

