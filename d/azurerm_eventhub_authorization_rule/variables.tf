variable "eventhub_name" {
  description = "(required)"
  type        = string
}

variable "listen" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "manage" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "send" {
  description = "(optional)"
  type        = bool
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

