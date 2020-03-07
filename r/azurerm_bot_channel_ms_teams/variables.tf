variable "bot_name" {
  description = "(required)"
  type        = string
}

variable "calling_web_hook" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_calling" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
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

