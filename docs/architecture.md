
# Architecture Overview

## Runtime Flow

File Arrival
-> Kubernetes Job Trigger
-> ETL Pod Startup
-> Validation
-> Transformation
-> Output Generation

## Components
- EKS
- EFS
- S3
- GitHub Actions
- Terraform
- Helm
