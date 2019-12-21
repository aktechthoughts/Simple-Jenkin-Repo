pipeline {
    agent any
    stages {
        stage('Example Build') {
            agent { 
                node { label 'abhishek-pc' } 
            } 
            steps {
                sh 'docker image pull  node:6-alpine'
               
            }
        }
    }
}