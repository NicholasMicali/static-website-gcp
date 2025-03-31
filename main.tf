# Main Terraform configuration file
# Testing commit message when pushing to github
# Use the GCS website module to create a bucket configured for static website hosting
module "static_website" {
  source      = "./modules/gcs_website"
  project_id  = var.project_id
  bucket_name = var.bucket_name
  location    = var.location
  force_destroy = var.force_destroy
}

# Upload the index.html file to the bucket
resource "google_storage_bucket_object" "index_page" {
  name         = "index.html"
  bucket       = module.static_website.bucket_name
  content      = file("${path.module}/index.html")
  content_type = "text/html"
}