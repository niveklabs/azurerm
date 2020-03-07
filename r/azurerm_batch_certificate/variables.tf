variable "account_name" {
  description = "(required)"
  type        = string
}

variable "certificate" {
  description = "(required)"
  type        = string
}

variable "format" {
  description = "(required)"
  type        = string
}

variable "password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "thumbprint" {
  description = "(required)"
  type        = string
}

variable "thumbprint_algorithm" {
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

