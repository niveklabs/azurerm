module "azurerm_data_factory" {
  source = "./azurerm/r/azurerm_data_factory"

  location            = null
  name                = null
  resource_group_name = null
  tags                = {}

  github_configuration = [{
    account_name    = null
    branch_name     = null
    git_url         = null
    repository_name = null
    root_folder     = null
  }]

  identity = [{
    principal_id = null
    tenant_id    = null
    type         = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]

  vsts_configuration = [{
    account_name    = null
    branch_name     = null
    project_name    = null
    repository_name = null
    root_folder     = null
    tenant_id       = null
  }]
}
