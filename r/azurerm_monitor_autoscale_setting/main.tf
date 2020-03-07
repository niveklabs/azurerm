terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_autoscale_setting" "this" {
  enabled             = var.enabled
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  target_resource_id  = var.target_resource_id

  dynamic "notification" {
    for_each = var.notification
    content {

      dynamic "email" {
        for_each = notification.value.email
        content {
          custom_emails                         = email.value["custom_emails"]
          send_to_subscription_administrator    = email.value["send_to_subscription_administrator"]
          send_to_subscription_co_administrator = email.value["send_to_subscription_co_administrator"]
        }
      }

      dynamic "webhook" {
        for_each = notification.value.webhook
        content {
          properties  = webhook.value["properties"]
          service_uri = webhook.value["service_uri"]
        }
      }

    }
  }

  dynamic "profile" {
    for_each = var.profile
    content {
      name = profile.value["name"]

      dynamic "capacity" {
        for_each = profile.value.capacity
        content {
          default = capacity.value["default"]
          maximum = capacity.value["maximum"]
          minimum = capacity.value["minimum"]
        }
      }

      dynamic "fixed_date" {
        for_each = profile.value.fixed_date
        content {
          end      = fixed_date.value["end"]
          start    = fixed_date.value["start"]
          timezone = fixed_date.value["timezone"]
        }
      }

      dynamic "recurrence" {
        for_each = profile.value.recurrence
        content {
          days     = recurrence.value["days"]
          hours    = recurrence.value["hours"]
          minutes  = recurrence.value["minutes"]
          timezone = recurrence.value["timezone"]
        }
      }

      dynamic "rule" {
        for_each = profile.value.rule
        content {

          dynamic "metric_trigger" {
            for_each = rule.value.metric_trigger
            content {
              metric_name        = metric_trigger.value["metric_name"]
              metric_resource_id = metric_trigger.value["metric_resource_id"]
              operator           = metric_trigger.value["operator"]
              statistic          = metric_trigger.value["statistic"]
              threshold          = metric_trigger.value["threshold"]
              time_aggregation   = metric_trigger.value["time_aggregation"]
              time_grain         = metric_trigger.value["time_grain"]
              time_window        = metric_trigger.value["time_window"]
            }
          }

          dynamic "scale_action" {
            for_each = rule.value.scale_action
            content {
              cooldown  = scale_action.value["cooldown"]
              direction = scale_action.value["direction"]
              type      = scale_action.value["type"]
              value     = scale_action.value["value"]
            }
          }

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

}

