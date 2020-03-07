variable "custom_block_response_body" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "custom_block_response_status_code" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "redirect_url" {
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

variable "custom_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 100"
  type = set(object(
    {
      action  = string
      enabled = bool
      match_condition = list(object(
        {
          match_values       = list(string)
          match_variable     = string
          negation_condition = bool
          operator           = string
          selector           = string
          transforms         = list(string)
        }
      ))
      name                           = string
      priority                       = number
      rate_limit_duration_in_minutes = number
      rate_limit_threshold           = number
      type                           = string
    }
  ))
  default = []
}

variable "managed_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 100"
  type = set(object(
    {
      exclusion = list(object(
        {
          match_variable = string
          operator       = string
          selector       = string
        }
      ))
      override = list(object(
        {
          exclusion = list(object(
            {
              match_variable = string
              operator       = string
              selector       = string
            }
          ))
          rule = list(object(
            {
              action  = string
              enabled = bool
              exclusion = list(object(
                {
                  match_variable = string
                  operator       = string
                  selector       = string
                }
              ))
              rule_id = string
            }
          ))
          rule_group_name = string
        }
      ))
      type    = string
      version = string
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

