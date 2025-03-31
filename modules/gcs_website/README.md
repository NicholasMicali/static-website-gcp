# Google Cloud Storage Static Website Module

This Terraform module creates a Google Cloud Storage bucket configured for static website hosting.

## Features

- Creates a GCS bucket with website configuration
- Configures the bucket for public read access
- Sets up CORS policies for web access
- Configures main page (index.html) and error page (404.html)

## Usage

```hcl
module "static_website" {
  source      = "./modules/gcs_website"
  project_id  = "your-project-id"
  bucket_name = "your-unique-bucket-name"
  location    = "US"
}
```

## Requirements

- Google Cloud Provider
- Terraform >= 0.13
- Google Project with the following APIs enabled:
  - Cloud Storage API (storage-api.googleapis.com)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project_id | The ID of the project to create the bucket in | string | n/a | yes |
| bucket_name | The name of the bucket to create | string | n/a | yes |
| location | The location of the bucket | string | "US" | no |
| force_destroy | When deleting a bucket, this boolean option will delete all contained objects | bool | false | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket | The created storage bucket |
| bucket_name | Bucket name |
| bucket_url | The base URL of the bucket |
| website_url | The website URL of the bucket |
