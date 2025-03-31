variable "project_id" {
  description = "The ID of the project to create the bucket in"
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket to create"
  type        = string
}

variable "location" {
  description = "The location of the bucket"
  type        = string
  default     = "US"
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects"
  type        = bool
  default     = false
}
