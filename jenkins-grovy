pipeline {
    agent any

    environment {
        AWS_REGION = 'us-west-2'
        DOCKER_IMAGE = 'your-docker-image-name'
        DOCKER_REGISTRY = 'your-docker-registry'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://your-repo-url.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://your-docker-registry', 'docker-credentials-id') {
                        docker.image("${DOCKER_REGISTRY}/${DOCKER_IMAGE}:latest").push()
                    }
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
