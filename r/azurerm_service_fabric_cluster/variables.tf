variable "add_on_features" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "cluster_code_version" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "management_endpoint" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "reliability_level" {
  description = "(required)"
  type        = string
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

variable "upgrade_mode" {
  description = "(required)"
  type        = string
}

variable "vm_image" {
  description = "(required)"
  type        = string
}

variable "azure_active_directory" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      client_application_id  = string
      cluster_application_id = string
      tenant_id              = string
    }
  ))
  default = []
}

variable "certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      thumbprint           = string
      thumbprint_secondary = string
      x509_store_name      = string
    }
  ))
  default = []
}

variable "certificate_common_names" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      common_names = set(object(
        {
          certificate_common_name       = string
          certificate_issuer_thumbprint = string
        }
      ))
      x509_store_name = string
    }
  ))
  default = []
}

variable "client_certificate_thumbprint" {
  description = "nested mode: NestingList, min items: 0, max items: 2"
  type = set(object(
    {
      is_admin   = bool
      thumbprint = string
    }
  ))
  default = []
}

variable "diagnostics_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      blob_endpoint              = string
      protected_account_key_name = string
      queue_endpoint             = string
      storage_account_name       = string
      table_endpoint             = string
    }
  ))
  default = []
}

variable "fabric_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name       = string
      parameters = map(string)
    }
  ))
  default = []
}

variable "node_type" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      application_ports = list(object(
        {
          end_port   = number
          start_port = number
        }
      ))
      capacities           = map(string)
      client_endpoint_port = number
      durability_level     = string
      ephemeral_ports = list(object(
        {
          end_port   = number
          start_port = number
        }
      ))
      http_endpoint_port          = number
      instance_count              = number
      is_primary                  = bool
      name                        = string
      placement_properties        = map(string)
      reverse_proxy_endpoint_port = number
    }
  ))
}

variable "reverse_proxy_certificate" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      thumbprint           = string
      thumbprint_secondary = string
      x509_store_name      = string
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

