terraform {
  backend "gcs" {
    bucket = "gcs-cicd-iam-import"
    prefix = "project-b"
  }
} 
