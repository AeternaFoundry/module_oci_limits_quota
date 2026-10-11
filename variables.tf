variable "limits_quota" {
  description = <<EOT
Map of limits_quota, attributes below
Required:
    - compartment_id
    - description
    - name
    - statements
Optional:
    - defined_tags
    - freeform_tags
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    description    = string
    name           = string
    statements     = list(string)
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

