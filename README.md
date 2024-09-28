## Creating an S3 Bucket using Terraform 
- Creating an S3 bucket with Terraform is a simple yet powerful way to manage cloud infrastructure using Infrastructure as Code (IaC). Below is a brief guide on how to create an S3 bucket in AWS using Terraform.

1. Install Terraform
    2. Configure AWS Provider
    3. Define the S3 Bucket Resource
    4. Running Terraform Commands

 - **Initialize Terraform**:
    ```bash
    terraform init
    ```

  - **Plan Changes**:
    ```bash
    terraform plan
    ```

  - **Apply Changes**:
    ```bash
    terraform apply
    ```

## Skkiping task 2 due to limited experience in Go

## Containerize the Go application
- This is a multi-stage Dockerfile. It compiles the Go code in the first stage and uses a minimal Alpine image in the second stage to keep the image lightweight.

## Prepared a deployment and service resource to deploy in Kubernetes
- The deployment.yml file is used to define how the Go application will be deployed within a Kubernetes cluster.
- The service.yml file defines a Service resource in Kubernetes, which provides a stable endpoint for accessing the deployed application.