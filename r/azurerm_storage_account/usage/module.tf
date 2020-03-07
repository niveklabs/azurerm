module "azurerm_storage_account" {
  source = "./azurerm/r/azurerm_storage_account"

  access_tier               = null
  account_kind              = null
  account_replication_type  = null
  account_tier              = null
  enable_https_traffic_only = null
  is_hns_enabled            = null
  location                  = null
  name                      = null
  resource_group_name       = null
  tags                      = {}

  blob_properties = [{
    cors_rule = [{
      allowed_headers    = []
      allowed_methods    = []
      allowed_origins    = []
      exposed_headers    = []
      max_age_in_seconds = null
    }]
    delete_retention_policy = [{
      days = null
    }]
  }]

  custom_domain = [{
    name          = null
    use_subdomain = null
  }]

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  network_rules = [{
    bypass                     = []
    default_action             = null
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }]

  queue_properties = [{
    cors_rule = [{
      allowed_headers    = []
      allowed_methods    = []
      allowed_origins    = []
      exposed_headers    = []
      max_age_in_seconds = null
    }]
    hour_metrics = [{
      enabled               = null
      include_apis          = null
      retention_policy_days = null
      version               = null
    }]
    logging = [{
      delete                = null
      read                  = null
      retention_policy_days = null
      version               = null
      write                 = null
    }]
    minute_metrics = [{
      enabled               = null
      include_apis          = null
      retention_policy_days = null
      version               = null
    }]
  }]

  static_website = [{
    error_404_document = null
    index_document     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
