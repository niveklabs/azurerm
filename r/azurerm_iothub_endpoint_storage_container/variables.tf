variable "batch_frequency_in_seconds" {
  description = "(optional)"
  type        = number
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

variable "encoding" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "file_name_format" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "iothub_name" {
  description = "(required)"
  type        = string
}

variable "max_chunk_size_in_bytes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
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

