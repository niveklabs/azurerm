variable "include_preview" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "version_prefix" {
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

