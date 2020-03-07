module "azurerm_log_analytics_solution" {
  source = "./azurerm/r/azurerm_log_analytics_solution"

  location              = null
  resource_group_name   = null
  solution_name         = null
  workspace_name        = null
  workspace_resource_id = null

  plan = [{
    name           = null
    product        = null
    promotion_code = null
    publisher      = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
