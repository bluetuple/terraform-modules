variable "bucket_name" {
  description = "The name of the storage bucket to create."
  type        = string
}

variable "location" {

  description = "The location where the storage bucket should be created."
  type        = string
}

variable "project_id" {
  description = "The ID of the project where the storage bucket should be created."
  type        = string
}

variable "storageclass" {
  description = "Storage class, must be one of STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  type        = string
  default     = "STANDARD"

  validation {
    condition     = can(index(["STANDARD", "MULTI_REGIONAL", "REGIONAL", "NEARLINE", "COLDLINE", "ARCHIVE"], var.storageclass))
    error_message = "Storage class must be one of STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  }

}