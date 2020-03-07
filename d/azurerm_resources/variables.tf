variable "name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "required_tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "resource_group_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "type" {
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

