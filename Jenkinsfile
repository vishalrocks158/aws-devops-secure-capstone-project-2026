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

        stage('Deployment Trigger') {
            steps {
                echo 'Deployment trigger stage executed successfully.'
            }
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