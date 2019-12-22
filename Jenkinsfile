pipeline {
    agent {label 'slave1'}
    stages {
        stage('create') {
            docker {
                image 'node:6-alpine'
                args '-p 3000:3000'
            }
        }

        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm -version'
            }
        }
         
    }
}