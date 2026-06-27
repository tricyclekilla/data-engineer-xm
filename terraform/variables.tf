variable "credentials" {
  description = "my credentials"
  default     = "./keys/my-cred.json"
}


variable "project" {
  description = "project"
  default     = "terraform-test-500420"
}



variable "location" {
  description = "The location of the resources"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery dataset name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My storage Bucket"
  default     = "terraform-test-500420-bucket"
}


variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
