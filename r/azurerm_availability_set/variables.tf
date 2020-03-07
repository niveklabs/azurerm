variable "location" {
  description = "(required)"
  type        = string
}

variable "managed" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "platform_fault_domain_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "platform_update_domain_count" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "proximity_placement_group_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_group_name" {
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

