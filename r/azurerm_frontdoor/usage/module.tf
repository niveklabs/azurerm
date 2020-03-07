module "azurerm_frontdoor" {
  source = "./azurerm/r/azurerm_frontdoor"

  enforce_backend_pools_certificate_name_check = null
  friendly_name                                = null
  load_balancer_enabled                        = null
  location                                     = null
  name                                         = null
  resource_group_name                          = null
  tags                                         = {}

  backend_pool = [{
    backend = [{
      address     = null
      enabled     = null
      host_header = null
      http_port   = null
      https_port  = null
      priority    = null
      weight      = null
    }]
    health_probe_name   = null
    id                  = null
    load_balancing_name = null
    name                = null
  }]

  backend_pool_health_probe = [{
    id                  = null
    interval_in_seconds = null
    name                = null
    path                = null
    protocol            = null
  }]

  backend_pool_load_balancing = [{
    additional_latency_milliseconds = null
    id                              = null
    name                            = null
    sample_size                     = null
    successful_samples_required     = null
  }]

  frontend_endpoint = [{
    custom_https_configuration = [{
      azure_key_vault_certificate_secret_name    = null
      azure_key_vault_certificate_secret_version = null
      azure_key_vault_certificate_vault_id       = null
      certificate_source                         = null
      minimum_tls_version                        = null
      provisioning_state                         = null
      provisioning_substate                      = null
    }]
    custom_https_provisioning_enabled       = null
    host_name                               = null
    id                                      = null
    name                                    = null
    session_affinity_enabled                = null
    session_affinity_ttl_seconds            = null
    web_application_firewall_policy_link_id = null
  }]

  routing_rule = [{
    accepted_protocols = []
    enabled            = null
    forwarding_configuration = [{
      backend_pool_name                     = null
      cache_enabled                         = null
      cache_query_parameter_strip_directive = null
      cache_use_dynamic_compression         = null
      custom_forwarding_path                = null
      forwarding_protocol                   = null
    }]
    frontend_endpoints = []
    id                 = null
    name               = null
    patterns_to_match  = []
    redirect_configuration = [{
      custom_fragment     = null
      custom_host         = null
      custom_path         = null
      custom_query_string = null
      redirect_protocol   = null
      redirect_type       = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
