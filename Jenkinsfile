#pipeline {
#    agent any
#
#    stages {
#        stage('Checkout - front end') {
#            steps {
#                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-react-starter.git'
#            }
#        }
#
#        stage('Install') {
#            steps {
#                sh "npm install"
#            }
#        }
#
#        stage('Build Docker Image') {
#            steps {
#                // Build Docker image for the front-end
#                sh 'docker build -t my-frontend-app:latest -f Dockerfile .'
#            }
#        }
#    }
#}

pipeline {
    agent any

    stages {
        stage('Checkout - Frontend') {
            steps {
                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-react-starter.git'
            }
        }

        stage('Build Frontend Docker Image') {
            steps {
                sh 'docker build -t my-frontend-app:latest -f Dockerfile .'
            }
        }

        stage('Checkout - Backend') {
            steps {
                git branch: 'main', url: 'https://github.com/kristina-abrahamyan/lbg-car-spring-app-starter.git'
            }
        }

        stage('Build Backend Docker Image') {
            steps {
                sh 'docker build -t my-backend-app:latest -f Dockerfile .'
            }
        }
    }
}

