output "bucket" {
  description = "The created storage bucket"
  value       = google_storage_bucket.website
}

output "bucket_name" {
  description = "Bucket name"
  value       = google_storage_bucket.website.name
}

output "bucket_url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>"
  value       = google_storage_bucket.website.url
}

output "website_url" {
  description = "The website URL of the bucket, in the format storage.googleapis.com/<bucket-name>"
  value       = "storage.googleapis.com/${google_storage_bucket.website.name}"
}
