resource "google_project_iam_member" "set-member" {
  for_each = merge(concat([for k1, v1 in var.dict_iam_member : {
    for v2 in v1.roles : "${k1}-${v1.member}-${v2}" => {
      member = v1.member
      role   = v2
    }
  }])...)
  project = var.project_id
  role    = each.value.role
  member  = each.value.member
}
