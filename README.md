# terraform-gcp-set-iam-member-list

This module set iam member in roles our custom roles.

## Usage

Basic usage of this module is as follows:

```hcl
locals {
  project_id = "YOUR_PROJECT_ID"

  dict_iam_member = {
    "id_1" = {
      roles  = ["roles/role1"]
      member = "user:user1@test.com"
      # User member example
    },
    "id_2" = {
      roles  = ["roles/role2"]
      member = "group:permission1a"
      # Group member example
    },
    "id_3" = {
      roles  = ["roles/rolesa1", "roles/rolesa2"]
      # List roles example
      member = "serviceAccount:sa_email"
      # SA member example
    },
  }
}

module "create_premission" {
  source          = "../"
  project_id      = local.project_id
  dict_iam_member = local.dict_iam_member
}
```
