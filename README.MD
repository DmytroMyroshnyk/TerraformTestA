# WordPress AWS Infrastructure Deployment

This Terraform project automates the deployment of a WordPress application on AWS with secure, private database and caching layers.

## Features
VPC Architecture: Isolated network environment with public/private subnets.<br>
Compute: EC2 instance for WordPress (public subnet).<br>
Database: MySQL RDS instance (private subnet).<br>
Caching: Redis ElastiCache cluster (private subnet).<br>
Security: IAM roles, security groups, and SSH key access.<br>
Automation: Infrastructure-as-Code (Terraform) + deployment script.<br>

## Deployment
terraform init<br>
terraform plan<br>
terraform apply<br>
