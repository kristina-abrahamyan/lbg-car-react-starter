pipeline {
    agent any

    stages {
        stage('Checkout - Frontend') {
            steps {
                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-react-starter'
            }
        }

        stage('Build Frontend Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub_id', url: 'https://index.docker.io/v1/']) {
                    sh 'docker build -t akristys1/my-frontend-app:latest -f Dockerfile .'
                    sh 'docker push akristys1/my-frontend-app:latest'
                }
            }
        }

        stage('Deploy Frontend') {
            steps {
                sh 'docker compose -f docker-compose.yaml up -d'
            }
        }

        stage('Checkout - Backend') {
            steps {
                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-spring-app'
            }
        }

        stage('Build Backend Docker Image') {
            steps {
                sh 'docker build -t akristys1/my-backend-app:latest -f Dockerfile .'
            }
        }

        stage('Deploy Backend') {
            steps {
                sh 'docker compose -f docker-compose.yaml up -d'
            }
        }
    }
}
