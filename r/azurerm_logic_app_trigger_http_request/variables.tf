variable "logic_app_id" {
  description = "(required)"
  type        = string
}

variable "method" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "relative_path" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "schema" {
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

