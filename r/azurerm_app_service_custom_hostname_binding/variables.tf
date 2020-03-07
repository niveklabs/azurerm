variable "app_service_name" {
  description = "(required)"
  type        = string
}

variable "hostname" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "ssl_state" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "thumbprint" {
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

