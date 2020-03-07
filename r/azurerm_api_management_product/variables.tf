variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "approval_required" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required)"
  type        = string
}

variable "product_id" {
  description = "(required)"
  type        = string
}

variable "published" {
  description = "(required)"
  type        = bool
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "subscription_required" {
  description = "(required)"
  type        = bool
}

variable "subscriptions_limit" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "terms" {
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

