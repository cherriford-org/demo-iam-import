# -----------------------------------
#  Test import of existing IAM bindings
# -----------------------------------

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