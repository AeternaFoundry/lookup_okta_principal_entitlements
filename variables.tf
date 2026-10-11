variable "principal_entitlements_lookup" {
  description = <<EOT
Map of principal_entitlements_lookup, attributes below
Optional:
    - parent (block):
        - external_id (required)
        - type (required)
    - target_principal (block):
        - external_id (required)
        - type (required)
EOT

  type = map(object({
    parent = optional(list(object({
      external_id = string
      type        = string
    })))
    target_principal = optional(list(object({
      external_id = string
      type        = string
    })))
  }))
}

