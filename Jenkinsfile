pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-pat-for-jenkins')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'powershell.exe docker build -t $DOCKERHUB_CREDENTIALS_USR/hello-world-app:latest .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                sh """
                    echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                    docker push $DOCKERHUB_CREDENTIALS_USR/hello-world-app:latest
                """
            }
        }
    }
}
