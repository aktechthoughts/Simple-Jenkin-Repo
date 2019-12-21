/*
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
*/

node('docker') {
    docker.withServer('tcp://192.168.178.28:2375') {
        docker.image('node:7-alpine').inside {
            sh 'node --version'
        }
    }
}
 