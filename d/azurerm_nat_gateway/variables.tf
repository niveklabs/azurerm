variable "name" {
  description = "(required)"
  type        = string
}

variable "public_ip_address_ids" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "public_ip_prefix_ids" {
  description = "(optional)"
  type        = list(string)
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
      read = string
    }
  ))
  default = []
}

