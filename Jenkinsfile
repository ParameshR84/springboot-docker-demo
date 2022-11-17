pipeline {
    agent any

    tools {
       maven 'maven_3_8_2'
    }
    stages{
        stage('Build maven project') {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ParameshR84/springboot-docker-demo']]])
                bat 'mvn clean install'
            }
        }
        stage('Build Docker Image') {
            steps{
                script{
                    bat 'docker build -t parameshdoc/springboot-docker-demo .'
                }
            }
        }
        stage('Push docker image to Hub') {
            steps{
                script {
                    bat 'docker login -u parameshdoc -p babuDocker2!R'

                    bat 'docker push parameshdoc/springboot-docker-demo'
                }
            }
        }
    }
}