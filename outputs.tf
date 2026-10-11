output "project_branches_lookup_id" {
  description = "Map of id values across all project_branches_lookup, keyed the same as var.project_branches_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_branches.project_branches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_branches_lookup_branches" {
  description = "Map of branches values across all project_branches_lookup, keyed the same as var.project_branches_lookup except keys with no branches are omitted"
  value       = { for k, v in data.gitlab_project_branches.project_branches_lookup : k => v.branches if v.branches != null && length(v.branches) > 0 }
}
output "project_branches_lookup_project" {
  description = "Map of project values across all project_branches_lookup, keyed the same as var.project_branches_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_branches.project_branches_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_branches_lookup_regex" {
  description = "Map of regex values across all project_branches_lookup, keyed the same as var.project_branches_lookup except keys with no regex are omitted"
  value       = { for k, v in data.gitlab_project_branches.project_branches_lookup : k => v.regex if v.regex != null && length(v.regex) > 0 }
}
output "project_branches_lookup_search" {
  description = "Map of search values across all project_branches_lookup, keyed the same as var.project_branches_lookup except keys with no search are omitted"
  value       = { for k, v in data.gitlab_project_branches.project_branches_lookup : k => v.search if v.search != null && length(v.search) > 0 }
}

