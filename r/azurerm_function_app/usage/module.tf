module "azurerm_function_app" {
  source = "./azurerm/r/azurerm_function_app"

  app_service_plan_id       = null
  app_settings              = {}
  client_affinity_enabled   = null
  enable_builtin_logging    = null
  enabled                   = null
  https_only                = null
  location                  = null
  name                      = null
  resource_group_name       = null
  storage_connection_string = null
  tags                      = {}
  version                   = null

  auth_settings = [{
    active_directory = [{
      allowed_audiences = []
      client_id         = null
      client_secret     = null
    }]
    additional_login_params        = {}
    allowed_external_redirect_urls = []
    default_provider               = null
    enabled                        = null
    facebook = [{
      app_id       = null
      app_secret   = null
      oauth_scopes = []
    }]
    google = [{
      client_id     = null
      client_secret = null
      oauth_scopes  = []
    }]
    issuer = null
    microsoft = [{
      client_id     = null
      client_secret = null
      oauth_scopes  = []
    }]
    runtime_version               = null
    token_refresh_extension_hours = null
    token_store_enabled           = null
    twitter = [{
      consumer_key    = null
      consumer_secret = null
    }]
    unauthenticated_client_action = null
  }]

  connection_string = [{
    name  = null
    type  = null
    value = null
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  site_config = [{
    always_on = null
    cors = [{
      allowed_origins     = []
      support_credentials = null
    }]
    ftps_state    = null
    http2_enabled = null
    ip_restriction = [{
      ip_address = null
      subnet_id  = null
    }]
    linux_fx_version          = null
    min_tls_version           = null
    use_32_bit_worker_process = null
    websockets_enabled        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
