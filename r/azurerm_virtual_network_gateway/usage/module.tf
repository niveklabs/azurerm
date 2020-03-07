module "azurerm_virtual_network_gateway" {
  source = "./azurerm/r/azurerm_virtual_network_gateway"

  active_active                    = null
  default_local_network_gateway_id = null
  enable_bgp                       = null
  generation                       = null
  location                         = null
  name                             = null
  resource_group_name              = null
  sku                              = null
  tags                             = {}
  type                             = null
  vpn_type                         = null

  bgp_settings = [{
    asn             = null
    peer_weight     = null
    peering_address = null
  }]

  ip_configuration = [{
    name                          = null
    private_ip_address_allocation = null
    public_ip_address_id          = null
    subnet_id                     = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  vpn_client_configuration = [{
    address_space         = []
    radius_server_address = null
    radius_server_secret  = null
    revoked_certificate = [{
      name       = null
      thumbprint = null
    }]
    root_certificate = [{
      name             = null
      public_cert_data = null
    }]
    vpn_client_protocols = []
  }]
}
