module "azurerm_application_gateway" {
  source = "./azurerm/r/azurerm_application_gateway"

  enable_http2        = null
  location            = null
  name                = null
  resource_group_name = null
  tags                = {}
  zones               = []

  authentication_certificate = [{
    data = null
    id   = null
    name = null
  }]

  autoscale_configuration = [{
    max_capacity = null
    min_capacity = null
  }]

  backend_address_pool = [{
    fqdns        = []
    id           = null
    ip_addresses = []
    name         = null
  }]

  backend_http_settings = [{
    affinity_cookie_name = null
    authentication_certificate = [{
      id   = null
      name = null
    }]
    connection_draining = [{
      drain_timeout_sec = null
      enabled           = null
    }]
    cookie_based_affinity               = null
    host_name                           = null
    id                                  = null
    name                                = null
    path                                = null
    pick_host_name_from_backend_address = null
    port                                = null
    probe_id                            = null
    probe_name                          = null
    protocol                            = null
    request_timeout                     = null
    trusted_root_certificate_names      = []
  }]

  custom_error_configuration = [{
    custom_error_page_url = null
    id                    = null
    status_code           = null
  }]

  frontend_ip_configuration = [{
    id                            = null
    name                          = null
    private_ip_address            = null
    private_ip_address_allocation = null
    public_ip_address_id          = null
    subnet_id                     = null
  }]

  frontend_port = [{
    id   = null
    name = null
    port = null
  }]

  gateway_ip_configuration = [{
    id        = null
    name      = null
    subnet_id = null
  }]

  http_listener = [{
    custom_error_configuration = [{
      custom_error_page_url = null
      id                    = null
      status_code           = null
    }]
    frontend_ip_configuration_id   = null
    frontend_ip_configuration_name = null
    frontend_port_id               = null
    frontend_port_name             = null
    host_name                      = null
    id                             = null
    name                           = null
    protocol                       = null
    require_sni                    = null
    ssl_certificate_id             = null
    ssl_certificate_name           = null
  }]

  identity = [{
    identity_ids = []
    type         = null
  }]

  probe = [{
    host     = null
    id       = null
    interval = null
    match = [{
      body        = null
      status_code = []
    }]
    minimum_servers                           = null
    name                                      = null
    path                                      = null
    pick_host_name_from_backend_http_settings = null
    protocol                                  = null
    timeout                                   = null
    unhealthy_threshold                       = null
  }]

  redirect_configuration = [{
    id                   = null
    include_path         = null
    include_query_string = null
    name                 = null
    redirect_type        = null
    target_listener_id   = null
    target_listener_name = null
    target_url           = null
  }]

  request_routing_rule = [{
    backend_address_pool_id     = null
    backend_address_pool_name   = null
    backend_http_settings_id    = null
    backend_http_settings_name  = null
    http_listener_id            = null
    http_listener_name          = null
    id                          = null
    name                        = null
    redirect_configuration_id   = null
    redirect_configuration_name = null
    rewrite_rule_set_id         = null
    rewrite_rule_set_name       = null
    rule_type                   = null
    url_path_map_id             = null
    url_path_map_name           = null
  }]

  rewrite_rule_set = [{
    id   = null
    name = null
    rewrite_rule = [{
      condition = [{
        ignore_case = null
        negate      = null
        pattern     = null
        variable    = null
      }]
      name = null
      request_header_configuration = [{
        header_name  = null
        header_value = null
      }]
      response_header_configuration = [{
        header_name  = null
        header_value = null
      }]
      rule_sequence = null
    }]
  }]

  sku = [{
    capacity = null
    name     = null
    tier     = null
  }]

  ssl_certificate = [{
    data             = null
    id               = null
    name             = null
    password         = null
    public_cert_data = null
  }]

  ssl_policy = [{
    cipher_suites        = []
    disabled_protocols   = []
    min_protocol_version = null
    policy_name          = null
    policy_type          = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  trusted_root_certificate = [{
    data = null
    id   = null
    name = null
  }]

  url_path_map = [{
    default_backend_address_pool_id     = null
    default_backend_address_pool_name   = null
    default_backend_http_settings_id    = null
    default_backend_http_settings_name  = null
    default_redirect_configuration_id   = null
    default_redirect_configuration_name = null
    default_rewrite_rule_set_id         = null
    default_rewrite_rule_set_name       = null
    id                                  = null
    name                                = null
    path_rule = [{
      backend_address_pool_id     = null
      backend_address_pool_name   = null
      backend_http_settings_id    = null
      backend_http_settings_name  = null
      id                          = null
      name                        = null
      paths                       = []
      redirect_configuration_id   = null
      redirect_configuration_name = null
      rewrite_rule_set_id         = null
      rewrite_rule_set_name       = null
    }]
  }]

  waf_configuration = [{
    disabled_rule_group = [{
      rule_group_name = null
      rules           = []
    }]
    enabled = null
    exclusion = [{
      match_variable          = null
      selector                = null
      selector_match_operator = null
    }]
    file_upload_limit_mb     = null
    firewall_mode            = null
    max_request_body_size_kb = null
    request_body_check       = null
    rule_set_type            = null
    rule_set_version         = null
  }]
}
