module "azurerm_cdn_endpoint" {
  source = "./modules/azurerm/r/azurerm_cdn_endpoint"

  content_types_to_compress     = []
  is_compression_enabled        = null
  is_http_allowed               = null
  is_https_allowed              = null
  location                      = null
  name                          = null
  optimization_type             = null
  origin_host_header            = null
  origin_path                   = null
  probe_path                    = null
  profile_name                  = null
  querystring_caching_behaviour = null
  resource_group_name           = null
  tags                          = {}

  delivery_rule = [{
    cache_expiration_action = [{
      behavior = null
      duration = null
    }]
    cache_key_query_string_action = [{
      behavior   = null
      parameters = null
    }]
    cookies_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      selector         = null
      transforms       = []
    }]
    device_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
    }]
    http_version_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
    }]
    modify_request_header_action = [{
      action = null
      name   = null
      value  = null
    }]
    modify_response_header_action = [{
      action = null
      name   = null
      value  = null
    }]
    name  = null
    order = null
    post_arg_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      selector         = null
      transforms       = []
    }]
    query_string_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    remote_address_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
    }]
    request_body_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    request_header_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      selector         = null
      transforms       = []
    }]
    request_method_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
    }]
    request_scheme_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
    }]
    request_uri_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    url_file_extension_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    url_file_name_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    url_path_condition = [{
      match_values     = []
      negate_condition = null
      operator         = null
      transforms       = []
    }]
    url_redirect_action = [{
      fragment      = null
      hostname      = null
      path          = null
      protocol      = null
      query_string  = null
      redirect_type = null
    }]
    url_rewrite_action = [{
      destination             = null
      preserve_unmatched_path = null
      source_pattern          = null
    }]
  }]

  geo_filter = [{
    action        = null
    country_codes = []
    relative_path = null
  }]

  global_delivery_rule = [{
    cache_expiration_action = [{
      behavior = null
      duration = null
    }]
    cache_key_query_string_action = [{
      behavior   = null
      parameters = null
    }]
    modify_request_header_action = [{
      action = null
      name   = null
      value  = null
    }]
    modify_response_header_action = [{
      action = null
      name   = null
      value  = null
    }]
    url_redirect_action = [{
      fragment      = null
      hostname      = null
      path          = null
      protocol      = null
      query_string  = null
      redirect_type = null
    }]
    url_rewrite_action = [{
      destination             = null
      preserve_unmatched_path = null
      source_pattern          = null
    }]
  }]

  origin = [{
    host_name  = null
    http_port  = null
    https_port = null
    name       = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
