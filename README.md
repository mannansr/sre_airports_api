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

## Create API Gateway Routing Rules
- We can configure AWS API Gateway to route traffic to both /airports and /airports_v2 endpoints, with 80% traffic going to /airports and 20% to /airports_v2.

- In API Gateway, we can set up this routing using stage variables and Lambda functions for routing, or use weighted routing via a canary deployment feature.

- Example of configuring API Gateway using canary deployments:

   1. In API Gateway, select the API  want to update.
   2. Create a new stage for  v2 API.
   3. Enable canary deployment for the stage, and set the canary traffic weight to 0.2 (20%).
   4. Deploy the API.

## CI/CD with buildspec.yml
- Utilizeing AWS CodeBuild to automate the build and deployment of Go application to Amazon EKS (Elastic Kubernetes Service). The build process is defined in the buildspec.yml file, which outlines the various stages involved in the CI/CD pipeline.

- The buildspec.yml file is structured into several phases that collectively handle the installation of dependencies, building the application, and deploying it to EKS.
