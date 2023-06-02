resource "google_project_iam_member" "set-member" {
  for_each = var.dict_iam_member
  project  = var.project_id
  role     = each.value["role"]
  member   = each.value["member"]
}
