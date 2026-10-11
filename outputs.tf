output "compute_instance_group_memberships_id" {
  description = "Map of id values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no id are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_instance_group_memberships_deletion_policy" {
  description = "Map of deletion_policy values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_instance_group_memberships_instance" {
  description = "Map of instance values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no instance are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "compute_instance_group_memberships_instance_group" {
  description = "Map of instance_group values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no instance_group are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.instance_group if v.instance_group != null && length(v.instance_group) > 0 }
}
output "compute_instance_group_memberships_project" {
  description = "Map of project values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no project are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_instance_group_memberships_zone" {
  description = "Map of zone values across all compute_instance_group_memberships, keyed the same as var.compute_instance_group_memberships except keys with no zone are omitted"
  value       = { for k, v in google_compute_instance_group_membership.compute_instance_group_memberships : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

