# Step-by-Step Guide: Creating a Multi-Stage Demo Application with Terraform

## Introduction
This step-by-step guide will walk you through the process of creating a multi-stage demo application using Terraform. The project is organized into several configuration files, including `main.tf`, `provider.tf`, `terraform.tf`, and modules within the `modules/demo-app` directory. It deploys the application in three different environments: development (dev), production (prd), and quality assurance (qa).

### Prerequisites
Before you begin, make sure you have the following prerequisites in place:
- Terraform installed on your system. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).
- AWS account credentials and the AWS CLI configured on your system.

## Step 1: Project Structure
Your project directory should have the following structure:

```
terraform-demoApp/
├── main.tf
├── provider.tf
├── terraform.tf
└── modules/
    └── demo-app/
        ├── dynamodb.tf
        ├── ec2.tf
        ├── s3.tf
        └── variables.tf
```

## Step 2: Configure AWS Provider
In the `provider.tf` file, configure the AWS provider by specifying the region. In this project, the region is set to "us-east-1."

## Step 3: Configure Terraform Backend
In the `terraform.tf` file, configure the Terraform backend. This project uses AWS S3 for remote state storage and DynamoDB for state locking. Customize the following values as needed:
- `bucket`: The name of the S3 bucket where Terraform state files will be stored.
- `dynamodb_table`: The name of the DynamoDB table for state locking.
- `key`: The name of the state file.
- `region`: The AWS region for your backend resources.

## Step 4: Define Variables
In the `modules/demo-app/variables.tf` file, define variables that allow customization of resources within the `demo-app` module. The variables include:
- `ami_id`: The Amazon Machine Image (AMI) ID for the EC2 instance.
- `instance_type`: The instance type for the EC2 instance.
- `table_name`: The name of the DynamoDB table.
- `bucket_name`: The name of the S3 bucket.
- `env_name`: The environment name used to create unique resource names.

## Step 5: Module Configuration
In the `main.tf` file, module configurations for different environments are specified. For each environment (dev, prd, qa), configure the following settings:
- `env_name`: Set the environment name (e.g., "dev," "prd," or "qa").
- `instance_type`: Define the instance type for the EC2 instance.
- `table_name`: Set the name of the DynamoDB table.
- `bucket_name`: Define the name of the S3 bucket.
- `ami_id`: Specify the AMI ID for the EC2 instance.

This step creates separate instances of the `demo-app` module for each environment.

## Step 6: Initialize Terraform
In your project directory, run the following commands:
1. `terraform init` to initialize your Terraform environment.
2. `terraform apply` to create the specified resources based on the configurations in `main.tf`.

## Step 7: Apply Configuration
Terraform will prompt you to confirm the creation of resources. Enter "yes" to proceed. Terraform will then create the specified AWS resources for each environment.

## Step 8: Review Resources
After Terraform completes the resource creation, review the AWS resources created in your AWS account. You should find EC2 instances, DynamoDB tables, and S3 buckets matching the configurations in `main.tf`.

## Conclusion
We have successfully created a multi-stage demo application using Terraform. This step-by-step guide demonstrates how to organize your project, configure AWS resources, and use Terraform modules for different environments.

Feel free to customize the project by modifying the configurations in `main.tf` and the variables in `modules/demo-app/variables.tf` to suit your specific needs.

Happy Terraforming!