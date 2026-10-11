data "okta_principal_entitlements" "principal_entitlements_lookup" {
  for_each = var.principal_entitlements_lookup


  dynamic "parent" {
    for_each = each.value.parent != null ? each.value.parent : []
    content {
      external_id = parent.value.external_id
      type        = parent.value.type
    }
  }

  dynamic "target_principal" {
    for_each = each.value.target_principal != null ? each.value.target_principal : []
    content {
      external_id = target_principal.value.external_id
      type        = target_principal.value.type
    }
  }
}

