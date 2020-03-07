module "azurerm_dev_test_policy" {
  source = "./azurerm/r/azurerm_dev_test_policy"

  description         = null
  evaluator_type      = null
  fact_data           = null
  lab_name            = null
  name                = null
  policy_set_name     = null
  resource_group_name = null
  tags                = {}
  threshold           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
