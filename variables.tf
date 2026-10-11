variable "project_branches_lookup" {
  description = <<EOT
Map of project_branches_lookup, attributes below
Required:
    - project
Optional:
    - regex
    - search
EOT

  type = map(object({
    project = string
    regex   = optional(string)
    search  = optional(string)
  }))
}

