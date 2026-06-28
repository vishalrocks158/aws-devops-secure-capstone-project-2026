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
Task 1: Version Control & Jenkins CI Pipeline
Objective

To implement Version Control using Git and GitHub, and establish a Continuous Integration (CI) pipeline using Jenkins for automated code integration and validation.

Activities Performed
Created a GitHub repository for project version control.
Initialized a local Git repository and configured Git user credentials.
Designed and created the enterprise project directory structure.
Connected the local repository with the remote GitHub repository.
Installed and configured Jenkins on an AWS EC2 (Ubuntu 22.04) instance.
Installed the required Jenkins plugins, including Git, Pipeline, GitHub Integration, and Credentials Binding.
Configured GitHub credentials securely within Jenkins.
Created a Jenkins Pipeline job using the Pipeline Script from SCM option.
Integrated the Jenkins Pipeline with the GitHub repository.
Developed the initial Jenkinsfile using the Declarative Pipeline syntax.
Successfully executed the first Jenkins Pipeline build.
Jenkins Pipeline Stages
Code Checkout
Retrieves the latest source code from the GitHub repository.
Build Validation
Validates the project structure and confirms successful repository checkout.
Deployment Trigger
Simulates the deployment stage and verifies successful pipeline execution.
Outcome

Successfully established a Git-based version control system integrated with Jenkins Continuous Integration (CI). The pipeline automatically checks out source code, validates the project structure, and executes the defined stages, providing a solid foundation for subsequent tasks involving Infrastructure as Code (Terraform), DevSecOps, AI-assisted automation, and Monitoring.

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
