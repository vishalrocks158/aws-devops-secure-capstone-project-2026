pipeline {
    agent any

    stages {

        stage('Code Checkout') {
            steps {
                echo 'Checking out source code from GitHub...'
                checkout scm
            }
        }

        stage('Build Validation') {
            steps {
                echo 'Validating project structure...'
                sh '''
                    echo "Current Directory:"
                    pwd

                    echo "Repository Contents:"
                    ls -la
                '''
            }
        }

stage('Terraform Init') {
    steps {
        dir('terraform') {
            sh 'terraform init'
        }
    }
}

stage('Terraform Validate') {
    steps {
        dir('terraform') {
            sh 'terraform validate'
        }
    }
}

stage('Terraform Plan') {
    steps {
        dir('terraform') {
            sh 'terraform plan'
        }
    }
}

stage('Deployment Trigger') {
    steps {
        echo 'Terraform validation completed.'
    }
}
    post {
        always {
            echo 'Pipeline execution completed.'
        }

        success {
            echo 'Build Successful.'
        }

        failure {
            echo 'Build Failed.'
        }
    }
}
