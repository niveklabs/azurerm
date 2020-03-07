variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "confirmation" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "email" {
  description = "(required)"
  type        = string
}

variable "first_name" {
  description = "(required)"
  type        = string
}

variable "last_name" {
  description = "(required)"
  type        = string
}

variable "note" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "state" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_id" {
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

