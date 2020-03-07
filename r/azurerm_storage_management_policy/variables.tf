variable "storage_account_id" {
  description = "(required)"
  type        = string
}

variable "rule" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      actions = list(object(
        {
          base_blob = list(object(
            {
              delete_after_days_since_modification_greater_than          = number
              tier_to_archive_after_days_since_modification_greater_than = number
              tier_to_cool_after_days_since_modification_greater_than    = number
            }
          ))
          snapshot = list(object(
            {
              delete_after_days_since_creation_greater_than = number
            }
          ))
        }
      ))
      enabled = bool
      filters = list(object(
        {
          blob_types   = set(string)
          prefix_match = set(string)
        }
      ))
      name = string
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

