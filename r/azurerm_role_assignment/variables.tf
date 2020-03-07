variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "principal_id" {
  description = "(required)"
  type        = string
}

variable "role_definition_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role_definition_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "scope" {
  description = "(required)"
  type        = string
}

variable "skip_service_principal_aad_check" {
  description = "(optional)"
  type        = bool
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

