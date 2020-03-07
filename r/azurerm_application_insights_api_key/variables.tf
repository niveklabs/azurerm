variable "application_insights_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "read_permissions" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "write_permissions" {
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

