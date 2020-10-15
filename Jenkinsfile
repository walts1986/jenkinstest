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
                sh 'apt-get -y install cppcheck'
                sh 'apt-get -y install build-essential'
                sh 'make'
                //sh 'git clone https://github.com/danmar/cppcheck'
                //sh 'cd cppcheck'
                sh 'ls'
                sh 'make'
                //sh 'make install CFGDIR=/usr/bin/cfg'
                sh 'cppcheck --enable=all --inconclusive --xml --xml-version=2 graph 2 > cppcheck.xml'
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
