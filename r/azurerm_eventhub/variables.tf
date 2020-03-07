variable "message_retention" {
  description = "(required)"
  type        = number
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_name" {
  description = "(required)"
  type        = string
}

variable "partition_count" {
  description = "(required)"
  type        = number
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "capture_description" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      destination = list(object(
        {
          archive_name_format = string
          blob_container_name = string
          name                = string
          storage_account_id  = string
        }
      ))
      enabled             = bool
      encoding            = string
      interval_in_seconds = number
      size_limit_in_bytes = number
      skip_empty_archives = bool
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

