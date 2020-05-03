variable "r_services_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "sql_connectivity_port" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "sql_connectivity_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sql_connectivity_update_password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sql_connectivity_update_username" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "sql_license_type" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "virtual_machine_id" {
  description = "(required)"
  type        = string
}

variable "auto_patching" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      day_of_week                            = string
      maintenance_window_duration_in_minutes = number
      maintenance_window_starting_hour       = number
    }
  ))
  default = []
}

variable "key_vault_credential" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      key_vault_url            = string
      name                     = string
      service_principal_name   = string
      service_principal_secret = string
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

