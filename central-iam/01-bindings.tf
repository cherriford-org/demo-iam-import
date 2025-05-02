# -----------------------------------
#  Central IAM bindings (testing imports)
# -----------------------------------

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

resource "google_project_iam_member" "project_b" {
  project = "prj-monitoring-91"

  for_each = toset([
    "roles/storage.admin",
    "roles/compute.instanceAdmin",
    "roles/owner",
    "roles/compute.admin"
  ])

  role   = each.key
  member = "group:demo-group-b@herriford.altostrat.com"
}
