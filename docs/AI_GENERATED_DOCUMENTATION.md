# AI-Generated DevSecOps Project Documentation

## Project Name

AWS DevOps Secure Capstone Project 2026

## Project Overview

This project demonstrates an automated and security-focused Infrastructure as Code (IaC) deployment workflow using Terraform, Jenkins, Checkov, Open Policy Agent (OPA), and AWS.

AI assistance was used to analyze infrastructure code, improve the CI/CD pipeline, identify potential security issues, validate configurations, and generate project documentation.

## Technology Stack

- AWS - Cloud Infrastructure
- Terraform - Infrastructure as Code
- Jenkins - CI/CD Automation
- GitHub - Source Code Management
- Checkov - Infrastructure as Code Security Scanning
- Open Policy Agent (OPA) - Policy-Based Validation
- AI Assistance - Code Review, Optimization, Validation, and Documentation

## Infrastructure Components

The Terraform configuration provisions the following AWS resources:

1. Virtual Private Cloud (VPC)
2. Public Subnet
3. Internet Gateway
4. Route Table and Route Table Association
5. Security Group
6. IAM Role
7. IAM Instance Profile
8. Amazon EC2 Instance

## Security Controls

The infrastructure includes the following security controls:

- EBS root volume encryption.
- EC2 Instance Metadata Service Version 2 (IMDSv2).
- Detailed CloudWatch monitoring.
- IAM instance profile for EC2.
- SSH access restricted to the administrator IP.
- Jenkins port 8080 restricted to the administrator IP.
- Checkov Infrastructure as Code security scanning.
- OPA policy-based configuration validation.

## Jenkins DevSecOps Pipeline

The Jenkins pipeline automates the following workflow:

1. Checkout source code from GitHub.
2. Initialize Terraform.
3. Check Terraform formatting.
4. Validate Terraform configuration.
5. Run Checkov security scanning.
6. Run OPA policy validation.
7. Generate Terraform execution plan.
8. Request manual deployment approval.
9. Apply the Terraform infrastructure configuration.

## AI-Assisted DevOps Activities

AI assistance was used for:

- Reviewing and improving Terraform configurations.
- Reviewing and enhancing Jenkins pipeline stages.
- Performing static code analysis.
- Identifying infrastructure security risks.
- Validating AWS and Terraform configurations.
- Generating infrastructure documentation.
- Classifying configuration requirements for Development and Production environments.

## AI Validation Insights

The AI-assisted review identified several correctly implemented security controls, including EBS encryption, IMDSv2 enforcement, IAM instance profile usage, and restricted administrative access.

The review also identified areas requiring additional production hardening:

- Public HTTP access.
- Public EC2 IP assignment.
- Unrestricted outbound security group traffic.
- Use of a public subnet for the EC2 workload.

## Benefits

The AI-enhanced DevOps workflow provides:

- Improved infrastructure code quality.
- Earlier identification of configuration errors.
- Automated security validation.
- Reduced risk of manual configuration mistakes.
- Improved CI/CD reliability.
- Consistent infrastructure documentation.
- Better visibility into Development and Production security requirements.

## Conclusion

The AWS DevOps Secure Capstone Project demonstrates how AI assistance can enhance a DevSecOps workflow by supporting infrastructure generation, pipeline optimization, static code analysis, configuration validation, and automated documentation.

The resulting AI-enhanced DevOps package combines Terraform automation, Jenkins CI/CD, Checkov security scanning, OPA policy enforcement, and AI-assisted validation to improve infrastructure deployment efficiency and reduce configuration errors.