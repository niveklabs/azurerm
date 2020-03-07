variable "admin_password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "admin_username" {
  description = "(required)"
  type        = string
}

variable "computer_name_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "custom_data" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "disable_password_authentication" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "do_not_run_extensions_on_overprovisioned_machines" {
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

variable "instances" {
  description = "(required)"
  type        = number
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "max_bid_price" {
  description = "(optional)"
  type        = number
  default     = null
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

variable "provision_vm_agent" {
  description = "(optional)"
  type        = bool
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

variable "sku" {
  description = "(required)"
  type        = string
}

variable "source_image_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "upgrade_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone_balance" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "zones" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "additional_capabilities" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      ultra_ssd_enabled = bool
    }
  ))
  default = []
}

variable "admin_ssh_key" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      public_key = string
      username   = string
    }
  ))
  default = []
}

variable "automatic_os_upgrade_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disable_automatic_rollback  = bool
      enable_automatic_os_upgrade = bool
    }
  ))
  default = []
}

variable "boot_diagnostics" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      storage_account_uri = string
    }
  ))
  default = []
}

variable "data_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      caching                   = string
      disk_encryption_set_id    = string
      disk_size_gb              = number
      lun                       = number
      storage_account_type      = string
      write_accelerator_enabled = bool
    }
  ))
  default = []
}

variable "identity" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      identity_ids = set(string)
      principal_id = string
      type         = string
    }
  ))
  default = []
}

variable "network_interface" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      dns_servers                   = list(string)
      enable_accelerated_networking = bool
      enable_ip_forwarding          = bool
      ip_configuration = list(object(
        {
          application_gateway_backend_address_pool_ids = set(string)
          application_security_group_ids               = set(string)
          load_balancer_backend_address_pool_ids       = set(string)
          load_balancer_inbound_nat_rules_ids          = set(string)
          name                                         = string
          primary                                      = bool
          public_ip_address = list(object(
            {
              domain_name_label       = string
              idle_timeout_in_minutes = number
              ip_tag = list(object(
                {
                  tag  = string
                  type = string
                }
              ))
              name                = string
              public_ip_prefix_id = string
            }
          ))
          subnet_id = string
          version   = string
        }
      ))
      name                      = string
      network_security_group_id = string
      primary                   = bool
    }
  ))
}

variable "os_disk" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      caching = string
      diff_disk_settings = list(object(
        {
          option = string
        }
      ))
      disk_encryption_set_id    = string
      disk_size_gb              = number
      storage_account_type      = string
      write_accelerator_enabled = bool
    }
  ))
}

variable "plan" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
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

variable "secret" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      certificate = set(object(
        {
          url = string
        }
      ))
      key_vault_id = string
    }
  ))
  default = []
}

variable "source_image_reference" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      offer     = string
      publisher = string
      sku       = string
      version   = string
    }
  ))
  default = []
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

