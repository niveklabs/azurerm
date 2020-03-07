variable "condition" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(required)"
  type        = bool
}

variable "endpoint_names" {
  description = "(required)"
  type        = list(string)
}

variable "iothub_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "source" {
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

