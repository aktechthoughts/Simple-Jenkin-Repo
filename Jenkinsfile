pipeline {
    agent {label 'slave1'}
    stages {
        stage('Build') {
            agent {label 'slave1'}
            
            steps {
                sh 'npm -version'
            }
        }
    }
}