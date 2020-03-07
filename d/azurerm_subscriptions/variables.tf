variable "display_name_contains" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "display_name_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      read = string
    }
  ))
  default = []
}

