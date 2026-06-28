```groovy
pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
    }

    options {
        timestamps()
        disableConcurrentBuilds()
    }

    stages {

        stage('Code Checkout') {
            steps {
                echo "Checking out source code from GitHub..."

                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/vishalrocks158/aws-devops-secure-capstone-project-2026.git',
                        credentialsId: 'github-pat'
                    ]]
                ])
            }
        }

        stage('Build Validation') {
            steps {
                echo "Validating project structure..."

                sh '''
                pwd
                ls -la
                ls -la terraform
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform init
                    '''
                }
            }
        }

        stage('Terraform Format Check') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform fmt -check
                    '''
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform validate
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform plan -out=tfplan
                    '''
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Approve Terraform Deployment?'
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh '''
                    terraform apply -auto-approve tfplan
                    '''
                }
            }
        }
    }

    post {

        success {
            echo "Terraform deployment completed successfully."
        }

        failure {
            echo "Terraform pipeline failed."
        }

        always {
            cleanWs()
        }
    }
}
```
