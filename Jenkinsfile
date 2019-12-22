pipeline {
    agent {label 'slave1'}
    stages {
        agent {
            docker {
                image 'node:6-alpine'
                args '-p 3000:3000'
            }
        }
        environment { 
            CI = 'true'
            HOME = '.'
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm -version'
            }
        }
         
    }
}