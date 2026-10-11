output "principal_entitlements_lookup_id" {
  description = "Map of id values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "principal_entitlements_lookup_data" {
  description = "Map of data values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup except keys with no data are omitted"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.data if v.data != null && length(v.data) > 0 }
}
output "principal_entitlements_lookup_parent" {
  description = "Map of parent values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup except keys with no parent are omitted"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "principal_entitlements_lookup_target_principal" {
  description = "Map of target_principal values across all principal_entitlements_lookup, keyed the same as var.principal_entitlements_lookup except keys with no target_principal are omitted"
  value       = { for k, v in data.okta_principal_entitlements.principal_entitlements_lookup : k => v.target_principal if v.target_principal != null && length(v.target_principal) > 0 }
}

