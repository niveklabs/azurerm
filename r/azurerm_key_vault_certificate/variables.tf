variable "key_vault_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      contents = string
      password = string
    }
  ))
  default = []
}

variable "certificate_policy" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      issuer_parameters = list(object(
        {
          name = string
        }
      ))
      key_properties = list(object(
        {
          exportable = bool
          key_size   = number
          key_type   = string
          reuse_key  = bool
        }
      ))
      lifetime_action = list(object(
        {
          action = list(object(
            {
              action_type = string
            }
          ))
          trigger = list(object(
            {
              days_before_expiry  = number
              lifetime_percentage = number
            }
          ))
        }
      ))
      secret_properties = list(object(
        {
          content_type = string
        }
      ))
      x509_certificate_properties = list(object(
        {
          extended_key_usage = list(string)
          key_usage          = list(string)
          subject            = string
          subject_alternative_names = list(object(
            {
              dns_names = set(string)
              emails    = set(string)
              upns      = set(string)
            }
          ))
          validity_in_months = number
        }
      ))
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
    }
  ))
  default = []
}

