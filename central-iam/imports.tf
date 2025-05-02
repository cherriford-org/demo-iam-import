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

# -----------------------------------
#  Test import of project-b (monitoring)
# -----------------------------------

import {
  id = "prj-monitoring-91 roles/compute.instanceAdmin group:demo-group-b@herriford.altostrat.com"    
  to = google_project_iam_member.project_b["roles/compute.instanceAdmin"]
}

import {
  id = "prj-monitoring-91 roles/owner group:demo-group-b@herriford.altostrat.com"    
  to = google_project_iam_member.project_b["roles/owner"]
}

import {
  id = "prj-monitoring-91 roles/storage.admin group:demo-group-b@herriford.altostrat.com"    
  to = google_project_iam_member.project_b["roles/storage.admin"]
}