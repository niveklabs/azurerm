module "azurerm_api_management_backend" {
  source = "./azurerm/r/azurerm_api_management_backend"

  api_management_name = null
  description         = null
  name                = null
  protocol            = null
  resource_group_name = null
  resource_id         = null
  title               = null
  url                 = null

  credentials = [{
    authorization = [{
      parameter = null
      scheme    = null
    }]
    certificate = []
    header      = {}
    query       = {}
  }]

  proxy = [{
    password = null
    url      = null
    username = null
  }]

  service_fabric_cluster = [{
    client_certificate_thumbprint    = null
    management_endpoints             = []
    max_partition_resolution_retries = null
    server_certificate_thumbprints   = []
    server_x509_name = [{
      issuer_certificate_thumbprint = null
      name                          = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  tls = [{
    validate_certificate_chain = null
    validate_certificate_name  = null
  }]
}
