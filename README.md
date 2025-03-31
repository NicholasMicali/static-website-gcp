# Static Website on Google Cloud Storage

This project provisions a simple static website hosted on Google Cloud Storage (GCS) using Terraform.

## Architecture

![Architecture Diagram](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggTFJcbiAgICBBW1RlcnJhZm9ybV0gLS0-IEJbR0NTIEJ1Y2tldF1cbiAgICBCIC0tPiBDW1dlYnNpdGUgQ29uZmlndXJhdGlvbl1cbiAgICBEW0luZGV4Lmh0bWxdIC0tPiBCXG4gICAgQiAtLT4gRVtQdWJsaWMgQWNjZXNzXVxuICAgIEUgLS0-IEZbRW5kIFVzZXJzXSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0In19)

## Features

- Deploys a GCS bucket configured for website hosting
- Uploads a sample index.html file
- Configures public access for the website content
- Minimal cost and maintenance overhead

## Prerequisites

- Google Cloud Platform account
- Google Cloud SDK installed and configured
- Terraform (>= 1.0.0) installed
- Google Cloud Storage API enabled in your project

## Usage

1. Clone this repository

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Update the `terraform.tfvars` file (create one if it doesn't exist):
   ```hcl
   project_id  = "your-google-project-id"
   bucket_name = "your-unique-bucket-name"
   location    = "US" # or your preferred region
   ```

4. Review the execution plan:
   ```
   terraform plan
   ```

5. Apply the configuration:
   ```
   terraform apply
   ```

6. After successful deployment, Terraform will output the website URL.

## Customization

To customize your website, simply update the `index.html` file in the root directory and run `terraform apply` again to upload the new content.

## Cleanup

To destroy all resources created by this project:

```
terraform destroy
```

## Notes

- This setup is intentionally simple and designed for testing or personal use
- For production deployments, consider adding a CDN, HTTPS, and more sophisticated content management
