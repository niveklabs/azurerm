variable "front_end_scale_factor" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "internal_load_balancing_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "pricing_tier" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
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

