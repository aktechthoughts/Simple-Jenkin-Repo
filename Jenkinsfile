/*pipeline {
    agent {
        node { label 'abhishek-pc' }
    }
    stages {
        stage('Test') {
            steps {
               
                sh 'echo $HOSTNAME'
            }
        }
    }
}*/
 
node ('abhishek-pc') {
  stage('Source') { // Get code
    git 'https://github.com/aktechthoughts/Simple-Jenkin-Repo.git'
  }
  stage('Compile') { // Compile and do unit testing
    sh "docker ps"
  }
}