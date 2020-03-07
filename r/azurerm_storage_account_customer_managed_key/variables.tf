variable "key_name" {
  description = "(required)"
  type        = string
}

variable "key_vault_id" {
  description = "(required)"
  type        = string
}

variable "key_version" {
  description = "(required)"
  type        = string
}

variable "storage_account_id" {
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

