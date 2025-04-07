# WordPress AWS Infrastructure Deployment

This Terraform project automates the deployment of a WordPress application on AWS with secure, private database and caching layers.

## Features
-VPC Architecture: Isolated network environment with public/private subnets.
-Compute: EC2 instance for WordPress (public subnet).
-Database: MySQL RDS instance (private subnet).
-Caching: Redis ElastiCache cluster (private subnet).
-Security: IAM roles, security groups, and SSH key access.
-Automation: Infrastructure-as-Code (Terraform) + deployment script.

## Deployment
terraform init
terraform plan
terraform apply
