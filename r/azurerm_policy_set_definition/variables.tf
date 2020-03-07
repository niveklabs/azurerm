variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required)"
  type        = string
}

variable "management_group_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "metadata" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "parameters" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "policy_definitions" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "policy_type" {
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

