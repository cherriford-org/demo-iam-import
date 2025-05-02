terraform {
  backend "gcs" {
    bucket = "gcs-cicd-iam-import"
    prefix = "central-iam"
  }
} 
