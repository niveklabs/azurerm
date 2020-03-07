module "azurerm_api_management" {
  source = "./azurerm/r/azurerm_api_management"

  location                  = null
  name                      = null
  notification_sender_email = null
  policy = [{
    xml_content = null
    xml_link    = null
  }]
  publisher_email     = null
  publisher_name      = null
  resource_group_name = null
  sku_name            = null
  tags                = {}

  additional_location = [{
    gateway_regional_url = null
    location             = null
    public_ip_addresses  = []
  }]

  certificate = [{
    certificate_password = null
    encoded_certificate  = null
    store_name           = null
  }]

  hostname_configuration = [{
    management = [{
      certificate                  = null
      certificate_password         = null
      host_name                    = null
      key_vault_id                 = null
      negotiate_client_certificate = null
    }]
    portal = [{
      certificate                  = null
      certificate_password         = null
      host_name                    = null
      key_vault_id                 = null
      negotiate_client_certificate = null
    }]
    proxy = [{
      certificate                  = null
      certificate_password         = null
      default_ssl_binding          = null
      host_name                    = null
      key_vault_id                 = null
      negotiate_client_certificate = null
    }]
    scm = [{
      certificate                  = null
      certificate_password         = null
      host_name                    = null
      key_vault_id                 = null
      negotiate_client_certificate = null
    }]
  }]

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  protocols = [{
    enable_http2 = null
  }]

  security = [{
    enable_backend_ssl30      = null
    enable_backend_tls10      = null
    enable_backend_tls11      = null
    enable_frontend_ssl30     = null
    enable_frontend_tls10     = null
    enable_frontend_tls11     = null
    enable_triple_des_ciphers = null
  }]

  sign_in = [{
    enabled = null
  }]

  sign_up = [{
    enabled = null
    terms_of_service = [{
      consent_required = null
      enabled          = null
      text             = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
