variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "display_name" {
  description = "(required)"
  type        = string
}

variable "primary_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "product_id" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "secondary_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "state" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subscription_id" {
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

