pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'lbeschastny/jenkins-build-essential' 
                }
            }
            steps {
                sh 'make'
                sh 'cppcheck — enable=all — inconclusive — xml — xml-version=2 graph 2 > cppcheck.xml
            }
        }
    }
}
