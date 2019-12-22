pipeline {
    agent {label 'slave1'}
    stages {
         stage('Build') {
            steps {
                docker image 'node:6-alpine' 
                sh 'npm install'
                sh 'npm -version'
            }
        }
         
    }
}