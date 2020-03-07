variable "additional_properties" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "annotations" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "connection_string" {
  description = "(required)"
  type        = string
}

variable "data_factory_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "parameters" {
  description = "(optional)"
  type        = map(string)
  default     = null
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

