pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    options {
        timestamps()
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

    stages {

        stage('Code Checkout') {
            steps {
                echo 'Checking out source code from GitHub...'

                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/vishalrocks158/aws-devops-secure-capstone-project-2026.git',
                        
                    ]]
                ])
            }
        }

        stage('Build Validation') {
            steps {
                sh '''
                    echo "Current Directory:"
                    pwd

                    echo "Repository Contents:"
                    ls -la

                    echo "Terraform Directory:"
                    ls -la terraform
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws']
                ]) {
                    dir('terraform') {
                        sh '''
                            terraform init
                        '''
                    }
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
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws']
                ]) {
                    dir('terraform') {
                        sh '''
                            terraform validate
                        '''
                    }
                }
            }
        }

stage('Checkov Security Scan') {
    steps {
        dir('terraform') {
            sh '''
                echo "========================================="
                echo "Running Checkov Security Scan"
                echo "========================================="

                /opt/checkov/venv/bin/checkov -d .
            '''
        }
    }
}
stage('OPA Policy Validation') {
    steps {
        dir('security/opa') {
            sh '''
                echo "========================================="
                echo "Running OPA Policy Validation"
                echo "========================================="

                /usr/local/bin/opa eval \
                -d policy.rego \
                -i input.json \
                "data.terraform.deny"
            '''
        }
    }
}        
stage('Terraform Plan') {
            steps {
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws']
                ]) {
                    dir('terraform') {
                        sh '''
                            terraform plan -input=false -out=tfplan
                        '''
                    }
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Approve Terraform Apply?', ok: 'Deploy'
            }
        }

        stage('Terraform Apply') {
            steps {
                withCredentials([
                    [$class: 'AmazonWebServicesCredentialsBinding',
                     credentialsId: 'aws']
                ]) {
                    dir('terraform') {
                        sh '''
                            terraform apply -auto-approve tfplan
                        '''
                    }
                }
            }
        }
    }

    post {

        success {
            echo 'Terraform Infrastructure Provisioned Successfully.'
        }

        failure {
            echo 'Pipeline Failed. Please check console logs.'
        }

        
    }
}