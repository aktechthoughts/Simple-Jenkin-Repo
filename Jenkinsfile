pipeline {
    agent {
        node { label 'abhishek-pc' }
    }
    stages {
        stage('Test') {
            steps {
                docker { image 'node:7-alpine' }
                sh 'echo HelloWorld'
            }
        }
    }
}
