output "project_id" {
  value       = var.project_id
  description = "Project id."
}

output "roles" {
  value       = google_project_iam_member.set-member
  description = "Project roles."
}
