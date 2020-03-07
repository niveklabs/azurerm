variable "disabled_alerts" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "email_account_admins" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "email_addresses" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "retention_days" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "server_name" {
  description = "(required)"
  type        = string
}

variable "state" {
  description = "(required)"
  type        = string
}

variable "storage_account_access_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_endpoint" {
  description = "(optional)"
  type        = string
  default     = null
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

