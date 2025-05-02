# -----------------------------------
#  Central IAM bindings
# -----------------------------------

# resource "google_project_iam_member" "project_a" {
#   project = "prj-logging-27"

#   for_each = toset([
#     "roles/storage.admin",
#     "roles/compute.instanceAdmin",
#     "roles/owner"
#   ])

#   role   = each.key
#   member = "group:demo-group-a@herriford.altostrat.com"
# }