variable "access_tier" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "content_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "metadata" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "parallelism" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "size" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "source" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_content" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_uri" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "storage_account_name" {
  description = "(required)"
  type        = string
}

variable "storage_container_name" {
  description = "(required)"
  type        = string
}

variable "type" {
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

