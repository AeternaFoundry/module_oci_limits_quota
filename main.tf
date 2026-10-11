resource "oci_limits_quota" "limits_quota" {
  for_each = var.limits_quota

  compartment_id = each.value.compartment_id
  description    = each.value.description
  name           = each.value.name
  statements     = each.value.statements
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

