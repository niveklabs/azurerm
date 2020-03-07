variable "bot_name" {
  description = "(required)"
  type        = string
}

variable "email_address" {
  description = "(required)"
  type        = string
}

variable "email_password" {
  description = "(required)"
  type        = string
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

