module "azurerm_service_fabric_cluster" {
  source = "./azurerm/r/azurerm_service_fabric_cluster"

  add_on_features      = []
  cluster_code_version = null
  location             = null
  management_endpoint  = null
  name                 = null
  reliability_level    = null
  resource_group_name  = null
  tags                 = {}
  upgrade_mode         = null
  vm_image             = null

  azure_active_directory = [{
    client_application_id  = null
    cluster_application_id = null
    tenant_id              = null
  }]

  certificate = [{
    thumbprint           = null
    thumbprint_secondary = null
    x509_store_name      = null
  }]

  certificate_common_names = [{
    common_names = [{
      certificate_common_name       = null
      certificate_issuer_thumbprint = null
    }]
    x509_store_name = null
  }]

  client_certificate_thumbprint = [{
    is_admin   = null
    thumbprint = null
  }]

  diagnostics_config = [{
    blob_endpoint              = null
    protected_account_key_name = null
    queue_endpoint             = null
    storage_account_name       = null
    table_endpoint             = null
  }]

  fabric_settings = [{
    name       = null
    parameters = {}
  }]

  node_type = [{
    application_ports = [{
      end_port   = null
      start_port = null
    }]
    capacities           = {}
    client_endpoint_port = null
    durability_level     = null
    ephemeral_ports = [{
      end_port   = null
      start_port = null
    }]
    http_endpoint_port          = null
    instance_count              = null
    is_primary                  = null
    name                        = null
    placement_properties        = {}
    reverse_proxy_endpoint_port = null
  }]

  reverse_proxy_certificate = [{
    thumbprint           = null
    thumbprint_secondary = null
    x509_store_name      = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
