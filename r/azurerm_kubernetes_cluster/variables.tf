variable "api_server_authorized_ip_ranges" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "dns_prefix" {
  description = "(required)"
  type        = string
}

variable "enable_pod_security_policy" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "kubernetes_version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "node_resource_group" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "private_link_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "addon_profile" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      aci_connector_linux = list(object(
        {
          enabled     = bool
          subnet_name = string
        }
      ))
      azure_policy = list(object(
        {
          enabled = bool
        }
      ))
      http_application_routing = list(object(
        {
          enabled                            = bool
          http_application_routing_zone_name = string
        }
      ))
      kube_dashboard = list(object(
        {
          enabled = bool
        }
      ))
      oms_agent = list(object(
        {
          enabled                    = bool
          log_analytics_workspace_id = string
        }
      ))
    }
  ))
  default = []
}

variable "default_node_pool" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      availability_zones    = list(string)
      enable_auto_scaling   = bool
      enable_node_public_ip = bool
      max_count             = number
      max_pods              = number
      min_count             = number
      name                  = string
      node_count            = number
      node_taints           = list(string)
      os_disk_size_gb       = number
      type                  = string
      vm_size               = string
      vnet_subnet_id        = string
    }
  ))
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      principal_id = string
      tenant_id    = string
      type         = string
    }
  ))
  default = []
}

variable "linux_profile" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      admin_username = string
      ssh_key = list(object(
        {
          key_data = string
        }
      ))
    }
  ))
  default = []
}

variable "network_profile" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dns_service_ip     = string
      docker_bridge_cidr = string
      load_balancer_profile = list(object(
        {
          effective_outbound_ips    = set(string)
          managed_outbound_ip_count = number
          outbound_ip_address_ids   = set(string)
          outbound_ip_prefix_ids    = set(string)
        }
      ))
      load_balancer_sku = string
      network_plugin    = string
      network_policy    = string
      pod_cidr          = string
      service_cidr      = string
    }
  ))
  default = []
}

variable "role_based_access_control" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      azure_active_directory = list(object(
        {
          client_app_id     = string
          server_app_id     = string
          server_app_secret = string
          tenant_id         = string
        }
      ))
      enabled = bool
    }
  ))
  default = []
}

variable "service_principal" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      client_id     = string
      client_secret = string
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

variable "windows_profile" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      admin_password = string
      admin_username = string
    }
  ))
  default = []
}

