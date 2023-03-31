# Define the module

resource "google_storage_bucket" "storage_bucket" {
  name          = var.bucket_name
  location      = var.location
  project       = var.project_id
  storage_class = var.storageclass
}

