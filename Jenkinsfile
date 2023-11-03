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
                sh 'docker build -t my-frontend-app:latest -f lbg-car-react-starter/Dockerfile .'
            }
        }

        stage('Push Frontend Docker Image') {
            steps {
                sh 'docker push my-frontend-app:latest'
            }
        }

        stage('Deploy Frontend') {
            steps {
                sh 'docker-compose -f lbg-car-react-starter/docker-compose.ymal up -d'
            }
        }

        stage('Checkout - Backend') {
            steps {
                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-spring-app'
            }
        }

        stage('Build Backend Docker Image') {
            steps {
                sh 'docker build -t my-backend-app:latest -f lbg-car-spring-app/Dockerfile .'
            }
        }

        stage('Push Backend Docker Image') {
            steps {
                sh 'docker push my-backend-app:latest'
            }
        }

        stage('Deploy Backend') {
            steps {
                sh 'docker-compose -f lbg-car-spring-app/docker-compose.ymal up -d'
            }
        }
    }
}
