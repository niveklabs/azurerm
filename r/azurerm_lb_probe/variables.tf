variable "interval_in_seconds" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "loadbalancer_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "number_of_probes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "port" {
  description = "(required)"
  type        = number
}

variable "protocol" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "request_path" {
  description = "(optional)"
  type        = string
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
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

