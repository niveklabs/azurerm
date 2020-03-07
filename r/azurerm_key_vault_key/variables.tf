variable "curve" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "expiration_date" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "key_opts" {
  description = "(required)"
  type        = list(string)
}

variable "key_size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "key_type" {
  description = "(required)"
  type        = string
}

variable "key_vault_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "not_before_date" {
  description = "(optional)"
  type        = string
  default     = null
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

