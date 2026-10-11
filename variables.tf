variable "golden_gate_deployment_upgrades_lookup" {
  description = <<EOT
Map of golden_gate_deployment_upgrades_lookup, attributes below
Required:
    - compartment_id
Optional:
    - deployment_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    deployment_id  = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

