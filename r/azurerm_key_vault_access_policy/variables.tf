variable "application_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "certificate_permissions" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "key_permissions" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "key_vault_id" {
  description = "(required)"
  type        = string
}

variable "object_id" {
  description = "(required)"
  type        = string
}

variable "secret_permissions" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "storage_permissions" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "tenant_id" {
  description = "(required)"
  type        = string
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

