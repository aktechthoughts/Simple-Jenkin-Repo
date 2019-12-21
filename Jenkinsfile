pipeline {
    agent {
        node { label 'abhishek-pc' }
    }
    stages {
        stage('create-agent'){
            agent {
                docker { image 'node:7-alpine' }
            }    

            steps {
                sh 'node --version'
            }
        }
    }
}


