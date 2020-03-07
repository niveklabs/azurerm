variable "device_connect" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "iothub_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "registry_read" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "registry_write" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "service_connect" {
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

