pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'lbeschastny/jenkins-build-essentia' 
                }
            }
            steps {
                sh 'make'
            }
        }
    }
}
