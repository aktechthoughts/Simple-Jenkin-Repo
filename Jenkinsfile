
node ('abhishek-pc'){
        stage('build') {
            steps {
                docker { image 'node:6.3' }
            }
        }


        stage('test') {
            steps {
                sh 'npm --version'
            }
        }

}
