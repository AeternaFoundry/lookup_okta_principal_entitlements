output "principal_entitlements_lookup_id" {
  description = "Map of id values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.id }
}
output "principal_entitlements_lookup_data" {
  description = "Map of data values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.data }
}
output "principal_entitlements_lookup_parent" {
  description = "Map of parent values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.parent }
}
output "principal_entitlements_lookup_target_principal" {
  description = "Map of target_principal values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.target_principal }
}

