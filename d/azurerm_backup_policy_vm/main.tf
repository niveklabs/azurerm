terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_backup_policy_vm" "this" {
  name                = var.name
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

