pipeline {
    agent any

    stages {
        stage('Start EC2') {
            steps {
                sh 'python3 boto3_start_instance.py'
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                sh 'chmod +x build_push.sh && ./build_push.sh'
            }
        }

        stage('Deploy to EC2') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh'
            }
        }
    }
}

