variable "caching" {
  description = "(required)"
  type        = string
}

variable "create_option" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "lun" {
  description = "(required)"
  type        = number
}

variable "managed_disk_id" {
  description = "(required)"
  type        = string
}

variable "virtual_machine_id" {
  description = "(required)"
  type        = string
}

variable "write_accelerator_enabled" {
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

