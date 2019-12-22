pipeline {
    agent {label 'slave1'}
    stages {
        stage('Build') {
            agent {
                {label 'slave1'}
                docker {
                    image 'node:6-alpine'
                    args '-p 3000:3000'
                }
            }            
            steps {
                sh 'npm -version'
            }
        }
    }
}