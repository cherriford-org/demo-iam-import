# Steps for transferring TF resource management location

1. Remove code block from current state file location

```
gsutil cp gs://gcs-cicd-iam-import/project-a/default.tfstate ./downloaded.tfstate

terraform state rm -state=./downloaded.tfstate google_project_iam_member.project_a
```

Output:

```
Removed google_project_iam_member.project_a["roles/compute.instanceAdmin"]
Removed google_project_iam_member.project_a["roles/owner"]
Removed google_project_iam_member.project_a["roles/storage.admin"]
Successfully removed 3 resource instance(s).
```

NOTE: You can also perform this in the pipeline (requires editing the pipeline file to be terraform rm instead of terraform apply)

2. Import state by adding an imports.tf file in new location 

```
import {
  id = "prj-logging-27 roles/compute.instanceAdmin group:demo-group-a@herriford.altostrat.com"    
  to = google_project_iam_member.project_a["roles/compute.instanceAdmin"]
}

import {
  id = "prj-logging-27 roles/owner group:demo-group-a@herriford.altostrat.com"    
  to = google_project_iam_member.project_a["roles/owner"]
}

import {
  id = "prj-logging-27 roles/storage.admin group:demo-group-a@herriford.altostrat.com"    
  to = google_project_iam_member.project_a["roles/storage.admin"]
}
```

3. Add the resource block to the new location as well

```
resource "google_project_iam_member" "project_a" {
  project = "prj-logging-27"

  for_each = toset([
    "roles/storage.admin",
    "roles/compute.instanceAdmin",
    "roles/owner"
  ])

  role   = each.key
  member = "group:demo-group-a@herriford.altostrat.com"
}
```

4. Run the pipeline