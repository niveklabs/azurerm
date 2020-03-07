module "azurerm_app_service_slot" {
  source = "./azurerm/r/azurerm_app_service_slot"

  app_service_name        = null
  app_service_plan_id     = null
  app_settings            = {}
  client_affinity_enabled = null
  enabled                 = null
  https_only              = null
  location                = null
  name                    = null
  resource_group_name     = null
  tags                    = {}

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

  logs = [{
    application_logs = [{
      azure_blob_storage = [{
        level             = null
        retention_in_days = null
        sas_url           = null
      }]
    }]
    http_logs = [{
      azure_blob_storage = [{
        retention_in_days = null
        sas_url           = null
      }]
      file_system = [{
        retention_in_days = null
        retention_in_mb   = null
      }]
    }]
  }]

  site_config = [{
    always_on           = null
    app_command_line    = null
    auto_swap_slot_name = null
    cors = [{
      allowed_origins     = []
      support_credentials = null
    }]
    default_documents        = []
    dotnet_framework_version = null
    ftps_state               = null
    http2_enabled            = null
    ip_restriction = [{
      ip_address                = null
      virtual_network_subnet_id = null
    }]
    java_container            = null
    java_container_version    = null
    java_version              = null
    linux_fx_version          = null
    local_mysql_enabled       = null
    managed_pipeline_mode     = null
    min_tls_version           = null
    php_version               = null
    python_version            = null
    remote_debugging_enabled  = null
    remote_debugging_version  = null
    scm_type                  = null
    use_32_bit_worker_process = null
    websockets_enabled        = null
    windows_fx_version        = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
