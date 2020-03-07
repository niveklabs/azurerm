module "azurerm_container_group" {
  source = "./azurerm/r/azurerm_container_group"

  dns_name_label      = null
  ip_address_type     = null
  location            = null
  name                = null
  network_profile_id  = null
  os_type             = null
  resource_group_name = null
  restart_policy      = null
  tags                = {}

  container = [{
    commands              = []
    cpu                   = null
    environment_variables = {}
    gpu = [{
      count = null
      sku   = null
    }]
    image = null
    liveness_probe = [{
      exec              = []
      failure_threshold = null
      http_get = [{
        path   = null
        port   = null
        scheme = null
      }]
      initial_delay_seconds = null
      period_seconds        = null
      success_threshold     = null
      timeout_seconds       = null
    }]
    memory = null
    name   = null
    ports = [{
      port     = null
      protocol = null
    }]
    readiness_probe = [{
      exec              = []
      failure_threshold = null
      http_get = [{
        path   = null
        port   = null
        scheme = null
      }]
      initial_delay_seconds = null
      period_seconds        = null
      success_threshold     = null
      timeout_seconds       = null
    }]
    secure_environment_variables = {}
    volume = [{
      mount_path           = null
      name                 = null
      read_only            = null
      share_name           = null
      storage_account_key  = null
      storage_account_name = null
    }]
  }]

  diagnostics = [{
    log_analytics = [{
      log_type      = null
      metadata      = {}
      workspace_id  = null
      workspace_key = null
    }]
  }]

  identity = [{
    identity_ids = []
    principal_id = null
    type         = null
  }]

  image_registry_credential = [{
    password = null
    server   = null
    username = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
