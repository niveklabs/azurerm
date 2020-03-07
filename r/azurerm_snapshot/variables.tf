variable "create_option" {
  description = "(required)"
  type        = string
}

variable "disk_size_gb" {
  description = "(optional)"
  type        = number
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

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "source_resource_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_uri" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_account_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "encryption_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      disk_encryption_key = list(object(
        {
          secret_url      = string
          source_vault_id = string
        }
      ))
      enabled = bool
      key_encryption_key = list(object(
        {
          key_url         = string
          source_vault_id = string
        }
      ))
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

