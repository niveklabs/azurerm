variable "automatic_os_upgrade" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "eviction_policy" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "health_probe_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "license_type" {
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

variable "overprovision" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "priority" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "proximity_placement_group_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "single_placement_group" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "upgrade_policy_mode" {
  description = "(required)"
  type        = string
}

variable "zones" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "boot_diagnostics" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled     = bool
      storage_uri = string
    }
  ))
  default = []
}

variable "extension" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      auto_upgrade_minor_version = bool
      name                       = string
      protected_settings         = string
      provision_after_extensions = set(string)
      publisher                  = string
      settings                   = string
      type                       = string
      type_handler_version       = string
    }
  ))
  default = []
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      identity_ids = list(string)
      principal_id = string
      type         = string
    }
  ))
  default = []
}

variable "network_profile" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      accelerated_networking = bool
      dns_settings = list(object(
        {
          dns_servers = list(string)
        }
      ))
      ip_configuration = list(object(
        {
          application_gateway_backend_address_pool_ids = set(string)
          application_security_group_ids               = set(string)
          load_balancer_backend_address_pool_ids       = set(string)
          load_balancer_inbound_nat_rules_ids          = set(string)
          name                                         = string
          primary                                      = bool
          public_ip_address_configuration = list(object(
            {
              domain_name_label = string
              idle_timeout      = number
              name              = string
            }
          ))
          subnet_id = string
        }
      ))
      ip_forwarding             = bool
      name                      = string
      network_security_group_id = string
      primary                   = bool
    }
  ))
}

variable "os_profile" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      admin_password       = string
      admin_username       = string
      computer_name_prefix = string
      custom_data          = string
    }
  ))
}

variable "os_profile_linux_config" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      disable_password_authentication = bool
      ssh_keys = list(object(
        {
          key_data = string
          path     = string
        }
      ))
    }
  ))
  default = []
}

variable "os_profile_secrets" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      source_vault_id = string
      vault_certificates = list(object(
        {
          certificate_store = string
          certificate_url   = string
        }
      ))
    }
  ))
  default = []
}

variable "os_profile_windows_config" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      additional_unattend_config = list(object(
        {
          component    = string
          content      = string
          pass         = string
          setting_name = string
        }
      ))
      enable_automatic_upgrades = bool
      provision_vm_agent        = bool
      winrm = list(object(
        {
          certificate_url = string
          protocol        = string
        }
      ))
    }
  ))
  default = []
}

variable "plan" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      name      = string
      product   = string
      publisher = string
    }
  ))
  default = []
}

variable "rolling_upgrade_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_batch_instance_percent              = number
      max_unhealthy_instance_percent          = number
      max_unhealthy_upgraded_instance_percent = number
      pause_time_between_batches              = string
    }
  ))
  default = []
}

variable "sku" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      capacity = number
      name     = string
      tier     = string
    }
  ))
}

variable "storage_profile_data_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      caching           = string
      create_option     = string
      disk_size_gb      = number
      lun               = number
      managed_disk_type = string
    }
  ))
  default = []
}

variable "storage_profile_image_reference" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      id        = string
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }
  ))
  default = []
}

variable "storage_profile_os_disk" {
  description = "nested mode: NestingSet, min items: 1, max items: 1"
  type = set(object(
    {
      caching           = string
      create_option     = string
      image             = string
      managed_disk_type = string
      name              = string
      os_type           = string
      vhd_containers    = set(string)
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

