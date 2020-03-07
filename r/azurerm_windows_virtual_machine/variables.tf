variable "admin_password" {
  description = "(required)"
  type        = string
}

variable "admin_username" {
  description = "(required)"
  type        = string
}

variable "allow_extension_operations" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "availability_set_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "computer_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "custom_data" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dedicated_host_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_automatic_updates" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "eviction_policy" {
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

variable "max_bid_price" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network_interface_ids" {
  description = "(required)"
  type        = list(string)
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

variable "size" {
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

variable "timezone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional)"
  type        = string
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

variable "additional_unattend_content" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      content = string
      setting = string
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
      name                      = string
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

variable "secret" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      certificate = set(object(
        {
          store = string
          url   = string
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

variable "winrm_listener" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      certificate_url = string
      protocol        = string
    }
  ))
  default = []
}

