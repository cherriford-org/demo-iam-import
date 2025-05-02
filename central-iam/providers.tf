provider "google" {
  project = "prj-cicd-core"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      # Ensure version is at least 4.22.0 - released May 2022
      version = ">= 4.22.0"
    }
    archive = {}
  }
}