terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_backend" "this" {
  api_management_name = var.api_management_name
  description         = var.description
  name                = var.name
  protocol            = var.protocol
  resource_group_name = var.resource_group_name
  resource_id         = var.resource_id
  title               = var.title
  url                 = var.url

  dynamic "credentials" {
    for_each = var.credentials
    content {
      certificate = credentials.value["certificate"]
      header      = credentials.value["header"]
      query       = credentials.value["query"]

      dynamic "authorization" {
        for_each = credentials.value.authorization
        content {
          parameter = authorization.value["parameter"]
          scheme    = authorization.value["scheme"]
        }
      }

    }
  }

  dynamic "proxy" {
    for_each = var.proxy
    content {
      password = proxy.value["password"]
      url      = proxy.value["url"]
      username = proxy.value["username"]
    }
  }

  dynamic "service_fabric_cluster" {
    for_each = var.service_fabric_cluster
    content {
      client_certificate_thumbprint    = service_fabric_cluster.value["client_certificate_thumbprint"]
      management_endpoints             = service_fabric_cluster.value["management_endpoints"]
      max_partition_resolution_retries = service_fabric_cluster.value["max_partition_resolution_retries"]
      server_certificate_thumbprints   = service_fabric_cluster.value["server_certificate_thumbprints"]

      dynamic "server_x509_name" {
        for_each = service_fabric_cluster.value.server_x509_name
        content {
          issuer_certificate_thumbprint = server_x509_name.value["issuer_certificate_thumbprint"]
          name                          = server_x509_name.value["name"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  dynamic "tls" {
    for_each = var.tls
    content {
      validate_certificate_chain = tls.value["validate_certificate_chain"]
      validate_certificate_name  = tls.value["validate_certificate_name"]
    }
  }

}

