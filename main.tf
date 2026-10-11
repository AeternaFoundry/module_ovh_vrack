resource "ovh_vrack" "vracks" {
  for_each = var.vracks

  description    = each.value.description
  name           = each.value.name
  ovh_subsidiary = each.value.ovh_subsidiary
  payment_mean   = each.value.payment_mean

  dynamic "order" {
    for_each = each.value.order != null ? each.value.order : []
    content {
    }
  }

  dynamic "plan" {
    for_each = each.value.plan != null ? [each.value.plan] : []
    content {
      catalog_name = plan.value.catalog_name
      dynamic "configuration" {
        for_each = plan.value.configuration != null ? plan.value.configuration : []
        content {
          label = configuration.value.label
          value = configuration.value.value
        }
      }
      duration     = plan.value.duration
      plan_code    = plan.value.plan_code
      pricing_mode = plan.value.pricing_mode
    }
  }

  dynamic "plan_option" {
    for_each = each.value.plan_option != null ? each.value.plan_option : []
    content {
      catalog_name = plan_option.value.catalog_name
      dynamic "configuration" {
        for_each = plan_option.value.configuration != null ? plan_option.value.configuration : []
        content {
          label = configuration.value.label
          value = configuration.value.value
        }
      }
      duration     = plan_option.value.duration
      plan_code    = plan_option.value.plan_code
      pricing_mode = plan_option.value.pricing_mode
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

