variable "api_management_name" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "protocol" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "resource_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "title" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "url" {
  description = "(required)"
  type        = string
}

variable "credentials" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      authorization = list(object(
        {
          parameter = string
          scheme    = string
        }
      ))
      certificate = list(string)
      header      = map(string)
      query       = map(string)
    }
  ))
  default = []
}

variable "proxy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      password = string
      url      = string
      username = string
    }
  ))
  default = []
}

variable "service_fabric_cluster" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      client_certificate_thumbprint    = string
      management_endpoints             = set(string)
      max_partition_resolution_retries = number
      server_certificate_thumbprints   = set(string)
      server_x509_name = set(object(
        {
          issuer_certificate_thumbprint = string
          name                          = string
        }
      ))
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

variable "tls" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      validate_certificate_chain = bool
      validate_certificate_name  = bool
    }
  ))
  default = []
}

