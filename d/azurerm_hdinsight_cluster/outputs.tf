output "cluster_version" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.cluster_version
}

output "component_versions" {
  description = "returns a map of string"
  value       = data.azurerm_hdinsight_cluster.this.component_versions
}

output "edge_ssh_endpoint" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.edge_ssh_endpoint
}

output "gateway" {
  description = "returns a list of object"
  value       = data.azurerm_hdinsight_cluster.this.gateway
}

output "https_endpoint" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.https_endpoint
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.id
}

output "kind" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.kind
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.location
}

output "ssh_endpoint" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.ssh_endpoint
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_hdinsight_cluster.this.tags
}

output "tier" {
  description = "returns a string"
  value       = data.azurerm_hdinsight_cluster.this.tier
}

output "this" {
  value = azurerm_hdinsight_cluster.this
}

