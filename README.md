AWS DevSecOps Secure Capstone Project

Repository Structure

aws-devops-secure-capstone-project-2026/
│
├── ansible/
├── app/
├── docs/
├── monitoring/
├── scripts/
├── security/
├── terraform/
├── Jenkinsfile
├── README.md
└── .gitignore



# Task 1 – Version Control & Jenkins CI Pipeline

## Completed Activities

* Created a GitHub repository for the project.
* Initialized the local Git repository.
* Configured Git user credentials.
* Created the enterprise project directory structure.
* Connected the local repository with the remote GitHub repository.
* Installed and configured Jenkins on AWS EC2 (Ubuntu 22.04).
* Installed the required Jenkins plugins.
* Configured GitHub credentials in Jenkins.
* Created a Jenkins Pipeline job.
* Integrated the Jenkins Pipeline with the GitHub repository.
* Developed the initial Jenkinsfile using Declarative Pipeline syntax.
* Implemented the **Code Checkout** stage.
* Implemented the **Build Validation** stage.
* Implemented the **Deployment Trigger** stage.
* Successfully executed the first Jenkins Pipeline build.
* Configured GitHub Webhook for automatic pipeline execution.
* Verified automatic Jenkins pipeline execution after GitHub code push.

## Task 2 – Infrastructure as Code (Terraform)

### Completed Activities

- Installed and configured Terraform
- Configured AWS Provider
- Created reusable Terraform variables
- Provisioned a custom VPC
- Created a Public Subnet
- Configured an Internet Gateway
- Configured Route Tables and Associations
- Created a Security Group with restricted SSH access
- Created an IAM Role and Instance Profile
- Provisioned an EC2 Instance
- Configured Terraform Outputs
- Successfully executed terraform init, plan, and apply
