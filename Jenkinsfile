pipeline {
    stages {
        stage('Example Build') {
            agent { 
                node { label 'abhishek-pc' } 
                docker 'maven:3-alpine'
            } 
            steps {
                echo 'Hello, Maven'
                sh 'mvn --version'
            }
        }
    }
}