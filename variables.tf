variable "compute_instance_group_memberships" {
  description = <<EOT
Map of compute_instance_group_memberships, attributes below
Required:
    - instance
    - instance_group
Optional:
    - deletion_policy
    - project
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance        = string
    instance_group  = string
    deletion_policy = optional(string)
    project         = optional(string)
    zone            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

