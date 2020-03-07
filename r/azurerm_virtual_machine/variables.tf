variable "availability_set_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "delete_data_disks_on_termination" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "delete_os_disk_on_termination" {
  description = "(optional)"
  type        = bool
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

variable "network_interface_ids" {
  description = "(required)"
  type        = list(string)
}

variable "primary_network_interface_id" {
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

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "vm_size" {
  description = "(required)"
  type        = string
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

variable "os_profile" {
  description = "nested mode: NestingSet, min items: 0, max items: 1"
  type = set(object(
    {
      admin_password = string
      admin_username = string
      computer_name  = string
      custom_data    = string
    }
  ))
  default = []
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
  description = "nested mode: NestingList, min items: 0, max items: 0"
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
      timezone                  = string
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

variable "storage_data_disk" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      caching                   = string
      create_option             = string
      disk_size_gb              = number
      lun                       = number
      managed_disk_id           = string
      managed_disk_type         = string
      name                      = string
      vhd_uri                   = string
      write_accelerator_enabled = bool
    }
  ))
  default = []
}

variable "storage_image_reference" {
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

variable "storage_os_disk" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      caching                   = string
      create_option             = string
      disk_size_gb              = number
      image_uri                 = string
      managed_disk_id           = string
      managed_disk_type         = string
      name                      = string
      os_type                   = string
      vhd_uri                   = string
      write_accelerator_enabled = bool
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

