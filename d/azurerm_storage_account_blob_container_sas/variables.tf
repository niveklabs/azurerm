variable "cache_control" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "connection_string" {
  description = "(required)"
  type        = string
}

variable "container_name" {
  description = "(required)"
  type        = string
}

variable "content_disposition" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_encoding" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_language" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "expiry" {
  description = "(required)"
  type        = string
}

variable "https_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "ip_address" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "start" {
  description = "(required)"
  type        = string
}

variable "permissions" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      add    = bool
      create = bool
      delete = bool
      list   = bool
      read   = bool
      write  = bool
    }
  ))
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

