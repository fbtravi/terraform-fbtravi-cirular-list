# terraform-gcp-set-iam-member-list

This module set iam member in roles our custom roles.

## Usage

Basic usage of this module is as follows:

```hcl
locals {
  project_id = "YOUR_PROJECT_ID"

  dict_iam_member = {
    "id_1" = {
      role   = "roles/role1"
      member = "user:user1@test.com"
    },
    "id_2" = {
      role   = "roles/role2"
      member = "group:permission1a"
    },
    "id_3" = {
      role   = "roles/role3"
      member = "serviceAccount:sa_email"
    },
  }
}

module "create_premission" {
  source          = "../"
  project_id      = local.project_id
  dict_iam_member = local.dict_iam_member
}
```
