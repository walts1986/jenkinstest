pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'ubuntu:18.04' 
                }
            }
            steps {
                sh 'apt-get update'
            }
        }
        stage('cppcehck') { 

            steps {
                //sh 'apt install cppcheck'
                //sh 'make'
                sh 'cppcheck --enable=all --inconclusive --xml --xml-version=2 graph 2 > cppcheck.xml'
            }
        }
    }
}
