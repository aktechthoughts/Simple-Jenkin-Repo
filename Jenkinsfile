pipeline {
    agent { dockerfile true }
    environment { 
        CI = 'true'
        HOME = '.'
    }
    stages {
        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './scripts/deliver.sh' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './scripts/kill.sh' 
            }
        }
    }
}