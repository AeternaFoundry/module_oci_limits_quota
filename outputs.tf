output "limits_quota_id" {
  description = "Map of id values across all limits_quota, keyed the same as var.limits_quota except keys with no id are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.id if v.id != null && length(v.id) > 0 }
}
output "limits_quota_compartment_id" {
  description = "Map of compartment_id values across all limits_quota, keyed the same as var.limits_quota except keys with no compartment_id are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "limits_quota_defined_tags" {
  description = "Map of defined_tags values across all limits_quota, keyed the same as var.limits_quota except keys with no defined_tags are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "limits_quota_description" {
  description = "Map of description values across all limits_quota, keyed the same as var.limits_quota except keys with no description are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.description if v.description != null && length(v.description) > 0 }
}
output "limits_quota_freeform_tags" {
  description = "Map of freeform_tags values across all limits_quota, keyed the same as var.limits_quota except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "limits_quota_is_lock_override" {
  description = "Map of is_lock_override values across all limits_quota, keyed the same as var.limits_quota except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.is_lock_override if v.is_lock_override != null }
}
output "limits_quota_locks" {
  description = "Map of locks values across all limits_quota, keyed the same as var.limits_quota except keys with no locks are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "limits_quota_name" {
  description = "Map of name values across all limits_quota, keyed the same as var.limits_quota except keys with no name are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.name if v.name != null && length(v.name) > 0 }
}
output "limits_quota_state" {
  description = "Map of state values across all limits_quota, keyed the same as var.limits_quota except keys with no state are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.state if v.state != null && length(v.state) > 0 }
}
output "limits_quota_statements" {
  description = "Map of statements values across all limits_quota, keyed the same as var.limits_quota except keys with no statements are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.statements if v.statements != null && length(v.statements) > 0 }
}
output "limits_quota_time_created" {
  description = "Map of time_created values across all limits_quota, keyed the same as var.limits_quota except keys with no time_created are omitted"
  value       = { for k, v in oci_limits_quota.limits_quota : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

