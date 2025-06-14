pipeline {
    agent any

    environment {
        IMAGE = "flask-devops-app"
        TAG = "latest"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE:$TAG .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f flask-app || true'
                sh 'docker run -d -p 5000:5000 --name flask-app $IMAGE:$TAG'
            }
        }
    }
}
