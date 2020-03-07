variable "entity" {
  description = "(required)"
  type        = map(string)
}

variable "partition_key" {
  description = "(required)"
  type        = string
}

variable "row_key" {
  description = "(required)"
  type        = string
}

variable "storage_account_name" {
  description = "(required)"
  type        = string
}

variable "table_name" {
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

