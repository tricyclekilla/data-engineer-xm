terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.37.0"
    }
  }
}

provider "google" {
  credentials = file("./keys/my-cred.json")
  project     = "terraform-test-500420"
  region      = "us-central1"
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-test-500420-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}