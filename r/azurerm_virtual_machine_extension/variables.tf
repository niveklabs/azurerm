variable "auto_upgrade_minor_version" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "protected_settings" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "publisher" {
  description = "(required)"
  type        = string
}

variable "settings" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "type" {
  description = "(required)"
  type        = string
}

variable "type_handler_version" {
  description = "(required)"
  type        = string
}

variable "virtual_machine_id" {
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

