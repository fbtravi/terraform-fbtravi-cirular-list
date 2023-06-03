locals {
  project_id = "YOUR_PROJECT_ID"

  dict_iam_member = {
    "id_1" = {
      roles  = ["roles/role1"]
      member = "user:user1@test.com"
    },
    "id_2" = {
      roles  = ["roles/role2"]
      member = "group:permission1a"
    },
    "id_3" = {
      roles  = ["roles/rolesa1", "roles/rolesa2"]
      member = "serviceAccount:sa_email"
    },
  }
}

module "create_premission" {
  source          = "../"
  project_id      = local.project_id
  dict_iam_member = local.dict_iam_member
}
