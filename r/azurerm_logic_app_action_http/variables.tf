variable "body" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "headers" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "logic_app_id" {
  description = "(required)"
  type        = string
}

variable "method" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "uri" {
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

