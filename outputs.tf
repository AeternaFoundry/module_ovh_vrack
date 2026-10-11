output "vracks_id" {
  description = "Map of id values across all vracks, keyed the same as var.vracks except keys with no id are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vracks_description" {
  description = "Map of description values across all vracks, keyed the same as var.vracks except keys with no description are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vracks_name" {
  description = "Map of name values across all vracks, keyed the same as var.vracks except keys with no name are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vracks_order" {
  description = "Map of order values across all vracks, keyed the same as var.vracks except keys with no order are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.order if v.order != null && length(v.order) > 0 }
}
output "vracks_ovh_subsidiary" {
  description = "Map of ovh_subsidiary values across all vracks, keyed the same as var.vracks except keys with no ovh_subsidiary are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.ovh_subsidiary if v.ovh_subsidiary != null && length(v.ovh_subsidiary) > 0 }
}
output "vracks_payment_mean" {
  description = "Map of payment_mean values across all vracks, keyed the same as var.vracks except keys with no payment_mean are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.payment_mean if v.payment_mean != null && length(v.payment_mean) > 0 }
}
output "vracks_plan" {
  description = "Map of plan values across all vracks, keyed the same as var.vracks except keys with no plan are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => one(v.plan) if v.plan != null && length(v.plan) > 0 }
}
output "vracks_plan_option" {
  description = "Map of plan_option values across all vracks, keyed the same as var.vracks except keys with no plan_option are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.plan_option if v.plan_option != null && length(v.plan_option) > 0 }
}
output "vracks_service_name" {
  description = "Map of service_name values across all vracks, keyed the same as var.vracks except keys with no service_name are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "vracks_urn" {
  description = "Map of urn values across all vracks, keyed the same as var.vracks except keys with no urn are omitted"
  value       = { for k, v in ovh_vrack.vracks : k => v.urn if v.urn != null && length(v.urn) > 0 }
}

