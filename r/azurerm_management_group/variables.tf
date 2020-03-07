variable "display_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "parent_management_group_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subscription_ids" {
  description = "(optional)"
  type        = set(string)
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

