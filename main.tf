resource "google_compute_instance_group_membership" "compute_instance_group_memberships" {
  for_each = var.compute_instance_group_memberships

  instance        = each.value.instance
  instance_group  = each.value.instance_group
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  zone            = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

