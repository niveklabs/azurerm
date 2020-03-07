variable "data_factory_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "edition" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "license_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "max_parallel_executions_per_node" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "node_size" {
  description = "(required)"
  type        = string
}

variable "number_of_nodes" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "catalog_info" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      administrator_login    = string
      administrator_password = string
      pricing_tier           = string
      server_endpoint        = string
    }
  ))
  default = []
}

variable "custom_setup_script" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      blob_container_uri = string
      sas_token          = string
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

variable "vnet_integration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      subnet_name = string
      vnet_id     = string
    }
  ))
  default = []
}

