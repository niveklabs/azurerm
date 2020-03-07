variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "evaluator_type" {
  description = "(required)"
  type        = string
}

variable "fact_data" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "lab_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "policy_set_name" {
  description = "(required)"
  type        = string
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

variable "threshold" {
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

