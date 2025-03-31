# Input variables for the static website project

variable "project_id" {
  description = "The ID of the Google Cloud project"
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket for hosting the static website"
  type        = string
}

variable "location" {
  description = "The location to create the bucket in"
  type        = string
  default     = "US"
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects"
  type        = bool
  default     = false
}
