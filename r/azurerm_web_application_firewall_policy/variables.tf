variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
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

variable "custom_rules" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      action = string
      match_conditions = list(object(
        {
          match_values = list(string)
          match_variables = list(object(
            {
              selector      = string
              variable_name = string
            }
          ))
          negation_condition = bool
          operator           = string
        }
      ))
      name      = string
      priority  = number
      rule_type = string
    }
  ))
  default = []
}

variable "policy_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
      mode    = string
    }
  ))
  default = []
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

