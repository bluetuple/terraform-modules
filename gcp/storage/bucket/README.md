### Moduele GCP storage bucket


#### to be called:
module "my_storage_bucket" {
  source      = "https://github.com/bluetuple/terraform-modules/gcp/storage/bucket"
  bucket_name = "my-bucket"
  location    = "us-central1"
  project_id  = "my-project-id"
  Storage_classe= "storage class2 # must be one of: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, default is STANDARD

}

#### Outputs:

Bucket URL

