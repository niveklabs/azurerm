module "azurerm_vpn_server_configuration" {
  source = "./azurerm/r/azurerm_vpn_server_configuration"

  location                 = null
  name                     = null
  resource_group_name      = null
  tags                     = {}
  vpn_authentication_types = []
  vpn_protocols            = []

  azure_active_directory_authentication = [{
    audience = null
    issuer   = null
    tenant   = null
  }]

  client_revoked_certificate = [{
    name       = null
    thumbprint = null
  }]

  client_root_certificate = [{
    name             = null
    public_cert_data = null
  }]

  ipsec_policy = [{
    dh_group               = null
    ike_encryption         = null
    ike_integrity          = null
    ipsec_encryption       = null
    ipsec_integrity        = null
    pfs_group              = null
    sa_data_size_kilobytes = null
    sa_lifetime_seconds    = null
  }]

  radius_server = [{
    address = null
    client_root_certificate = [{
      name       = null
      thumbprint = null
    }]
    secret = null
    server_root_certificate = [{
      name             = null
      public_cert_data = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
