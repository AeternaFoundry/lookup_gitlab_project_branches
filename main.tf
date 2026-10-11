data "gitlab_project_branches" "project_branches_lookup" {
  for_each = var.project_branches_lookup

  project = each.value.project
  regex   = each.value.regex
  search  = each.value.search
}

