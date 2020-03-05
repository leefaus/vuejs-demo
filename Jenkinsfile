pipeline {

    environment {
        registry = "leefaus/vuejs-demo"
        registryCredential = "dockerhub"
        dockerImage = ""
    }
    agent any

    stages {
        stage('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                '''
            }
        }
        stage ('Docker Build') {
            steps {
                script {
                    dockerImage = docker.build (registry + ":${BUILD_NUMBER}", ".")
                }
            }
        }
        stage ('Docker Publish') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Remove Unused docker image') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}