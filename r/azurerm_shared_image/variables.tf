variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "eula" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "gallery_name" {
  description = "(required)"
  type        = string
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "os_type" {
  description = "(required)"
  type        = string
}

variable "privacy_statement_uri" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "release_note_uri" {
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

variable "identifier" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      offer     = string
      publisher = string
      sku       = string
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
      update = string
    }
  ))
  default = []
}

