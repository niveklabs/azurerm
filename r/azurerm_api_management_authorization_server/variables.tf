variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "authorization_endpoint" {
  description = "(required)"
  type        = string
}

variable "authorization_methods" {
  description = "(required)"
  type        = set(string)
}

variable "bearer_token_sending_methods" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "client_authentication_method" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "client_id" {
  description = "(required)"
  type        = string
}

variable "client_registration_endpoint" {
  description = "(required)"
  type        = string
}

variable "client_secret" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "default_scope" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required)"
  type        = string
}

variable "grant_types" {
  description = "(required)"
  type        = set(string)
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "resource_owner_password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "resource_owner_username" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "support_state" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "token_endpoint" {
  description = "(optional)"
  type        = string
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

variable "token_body_parameter" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name  = string
      value = string
    }
  ))
  default = []
}

