module "azurerm_kubernetes_cluster" {
  source = "./azurerm/r/azurerm_kubernetes_cluster"

  api_server_authorized_ip_ranges = []
  dns_prefix                      = null
  enable_pod_security_policy      = null
  kubernetes_version              = null
  location                        = null
  name                            = null
  node_resource_group             = null
  private_link_enabled            = null
  resource_group_name             = null
  tags                            = {}

  addon_profile = [{
    aci_connector_linux = [{
      enabled     = null
      subnet_name = null
    }]
    azure_policy = [{
      enabled = null
    }]
    http_application_routing = [{
      enabled                            = null
      http_application_routing_zone_name = null
    }]
    kube_dashboard = [{
      enabled = null
    }]
    oms_agent = [{
      enabled                    = null
      log_analytics_workspace_id = null
    }]
  }]

  default_node_pool = [{
    availability_zones    = []
    enable_auto_scaling   = null
    enable_node_public_ip = null
    max_count             = null
    max_pods              = null
    min_count             = null
    name                  = null
    node_count            = null
    node_taints           = []
    os_disk_size_gb       = null
    type                  = null
    vm_size               = null
    vnet_subnet_id        = null
  }]

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  linux_profile = [{
    admin_username = null
    ssh_key = [{
      key_data = null
    }]
  }]

  network_profile = [{
    dns_service_ip     = null
    docker_bridge_cidr = null
    load_balancer_profile = [{
      effective_outbound_ips    = []
      managed_outbound_ip_count = null
      outbound_ip_address_ids   = []
      outbound_ip_prefix_ids    = []
    }]
    load_balancer_sku = null
    network_plugin    = null
    network_policy    = null
    pod_cidr          = null
    service_cidr      = null
  }]

  role_based_access_control = [{
    azure_active_directory = [{
      client_app_id     = null
      server_app_id     = null
      server_app_secret = null
      tenant_id         = null
    }]
    enabled = null
  }]

  service_principal = [{
    client_id     = null
    client_secret = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  windows_profile = [{
    admin_password = null
    admin_username = null
  }]
}
