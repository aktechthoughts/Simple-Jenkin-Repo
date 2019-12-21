pipeline {
    agent {
        node { label 'abhishek-pc' }
        docker { image 'node:7-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}