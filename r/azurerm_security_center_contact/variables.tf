variable "alert_notifications" {
  description = "(required)"
  type        = bool
}

variable "alerts_to_admins" {
  description = "(required)"
  type        = bool
}

variable "email" {
  description = "(required)"
  type        = string
}

variable "phone" {
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

