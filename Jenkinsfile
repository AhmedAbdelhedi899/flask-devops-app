pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                git branch: 'main', url: 'https://github.com/AhmedAbdelhedi899/flask-devops-app.git'
            }
        }

        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build("flask-devops-app:latest")
                }
            }
        }

        stage('Run Docker container') {
            steps {
                sh '''
                docker rm -f flask-app || true
                docker run -d -p 5000:5000 --name flask-app flask-devops-app:latest
                '''
            }
        }
    }
}
