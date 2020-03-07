terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_kubernetes_cluster" "this" {
  api_server_authorized_ip_ranges = var.api_server_authorized_ip_ranges
  dns_prefix                      = var.dns_prefix
  enable_pod_security_policy      = var.enable_pod_security_policy
  kubernetes_version              = var.kubernetes_version
  location                        = var.location
  name                            = var.name
  node_resource_group             = var.node_resource_group
  private_link_enabled            = var.private_link_enabled
  resource_group_name             = var.resource_group_name
  tags                            = var.tags

  dynamic "addon_profile" {
    for_each = var.addon_profile
    content {

      dynamic "aci_connector_linux" {
        for_each = addon_profile.value.aci_connector_linux
        content {
          enabled     = aci_connector_linux.value["enabled"]
          subnet_name = aci_connector_linux.value["subnet_name"]
        }
      }

      dynamic "azure_policy" {
        for_each = addon_profile.value.azure_policy
        content {
          enabled = azure_policy.value["enabled"]
        }
      }

      dynamic "http_application_routing" {
        for_each = addon_profile.value.http_application_routing
        content {
          enabled = http_application_routing.value["enabled"]
        }
      }

      dynamic "kube_dashboard" {
        for_each = addon_profile.value.kube_dashboard
        content {
          enabled = kube_dashboard.value["enabled"]
        }
      }

      dynamic "oms_agent" {
        for_each = addon_profile.value.oms_agent
        content {
          enabled                    = oms_agent.value["enabled"]
          log_analytics_workspace_id = oms_agent.value["log_analytics_workspace_id"]
        }
      }

    }
  }

  dynamic "default_node_pool" {
    for_each = var.default_node_pool
    content {
      availability_zones    = default_node_pool.value["availability_zones"]
      enable_auto_scaling   = default_node_pool.value["enable_auto_scaling"]
      enable_node_public_ip = default_node_pool.value["enable_node_public_ip"]
      max_count             = default_node_pool.value["max_count"]
      max_pods              = default_node_pool.value["max_pods"]
      min_count             = default_node_pool.value["min_count"]
      name                  = default_node_pool.value["name"]
      node_count            = default_node_pool.value["node_count"]
      node_taints           = default_node_pool.value["node_taints"]
      os_disk_size_gb       = default_node_pool.value["os_disk_size_gb"]
      type                  = default_node_pool.value["type"]
      vm_size               = default_node_pool.value["vm_size"]
      vnet_subnet_id        = default_node_pool.value["vnet_subnet_id"]
    }
  }

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
    }
  }

  dynamic "linux_profile" {
    for_each = var.linux_profile
    content {
      admin_username = linux_profile.value["admin_username"]

      dynamic "ssh_key" {
        for_each = linux_profile.value.ssh_key
        content {
          key_data = ssh_key.value["key_data"]
        }
      }

    }
  }

  dynamic "network_profile" {
    for_each = var.network_profile
    content {
      dns_service_ip     = network_profile.value["dns_service_ip"]
      docker_bridge_cidr = network_profile.value["docker_bridge_cidr"]
      load_balancer_sku  = network_profile.value["load_balancer_sku"]
      network_plugin     = network_profile.value["network_plugin"]
      network_policy     = network_profile.value["network_policy"]
      pod_cidr           = network_profile.value["pod_cidr"]
      service_cidr       = network_profile.value["service_cidr"]

      dynamic "load_balancer_profile" {
        for_each = network_profile.value.load_balancer_profile
        content {
          managed_outbound_ip_count = load_balancer_profile.value["managed_outbound_ip_count"]
          outbound_ip_address_ids   = load_balancer_profile.value["outbound_ip_address_ids"]
          outbound_ip_prefix_ids    = load_balancer_profile.value["outbound_ip_prefix_ids"]
        }
      }

    }
  }

  dynamic "role_based_access_control" {
    for_each = var.role_based_access_control
    content {
      enabled = role_based_access_control.value["enabled"]

      dynamic "azure_active_directory" {
        for_each = role_based_access_control.value.azure_active_directory
        content {
          client_app_id     = azure_active_directory.value["client_app_id"]
          server_app_id     = azure_active_directory.value["server_app_id"]
          server_app_secret = azure_active_directory.value["server_app_secret"]
          tenant_id         = azure_active_directory.value["tenant_id"]
        }
      }

    }
  }

  dynamic "service_principal" {
    for_each = var.service_principal
    content {
      client_id     = service_principal.value["client_id"]
      client_secret = service_principal.value["client_secret"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  dynamic "windows_profile" {
    for_each = var.windows_profile
    content {
      admin_password = windows_profile.value["admin_password"]
      admin_username = windows_profile.value["admin_username"]
    }
  }

}

