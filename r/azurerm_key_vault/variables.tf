variable "access_policy" {
  description = "(optional)"
  type = list(object(
    {
      application_id          = string
      certificate_permissions = list(string)
      key_permissions         = list(string)
      object_id               = string
      secret_permissions      = list(string)
      storage_permissions     = list(string)
      tenant_id               = string
    }
  ))
  default = null
}

variable "enabled_for_deployment" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled_for_disk_encryption" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "enabled_for_template_deployment" {
  description = "(optional)"
  type        = bool
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

variable "purge_protection_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "sku_name" {
  description = "(required)"
  type        = string
}

variable "soft_delete_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "tenant_id" {
  description = "(required)"
  type        = string
}

variable "network_acls" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      bypass                     = string
      default_action             = string
      ip_rules                   = set(string)
      virtual_network_subnet_ids = set(string)
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

