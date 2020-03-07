variable "event_delivery_schema" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "included_event_types" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "scope" {
  description = "(required)"
  type        = string
}

variable "topic_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "eventhub_endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      eventhub_id = string
    }
  ))
  default = []
}

variable "hybrid_connection_endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      hybrid_connection_id = string
    }
  ))
  default = []
}

variable "retry_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      event_time_to_live    = number
      max_delivery_attempts = number
    }
  ))
  default = []
}

variable "storage_blob_dead_letter_destination" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      storage_account_id          = string
      storage_blob_container_name = string
    }
  ))
  default = []
}

variable "storage_queue_endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      queue_name         = string
      storage_account_id = string
    }
  ))
  default = []
}

variable "subject_filter" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      case_sensitive      = bool
      subject_begins_with = string
      subject_ends_with   = string
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

variable "webhook_endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      url = string
    }
  ))
  default = []
}

