# Output values from the static website project

output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = module.static_website.bucket_name
}

output "bucket_url" {
  description = "The base URL of the bucket"
  value       = module.static_website.bucket_url
}

output "website_url" {
  description = "The URL where the static website can be accessed"
  value       = module.static_website.website_url
}
