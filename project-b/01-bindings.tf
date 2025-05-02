# -----------------------------------
#  project-b IAM bindings (prj-monitoring) 
# -----------------------------------

resource "google_project_iam_member" "project_b" {
  project = "prj-monitoring-91"

  for_each = toset([
    "roles/storage.admin",
    "roles/compute.instanceAdmin",
    "roles/owner"
  ])

  role   = each.key
  member = "group:demo-group-b@herriford.altostrat.com"
}
