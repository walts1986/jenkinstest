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
                //sh 'apt install cppcheck'
                sh 'make'
                sh 'git clone https://github.com/danmar/cppcheck'
                sh 'cd cppcheck'
                sh 'make SRCDIR=build CFGDIR=/usr/bin/cfg HAVE_RULES=yes'
                sh 'make install CFGDIR=/usr/bin/cfg'
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
