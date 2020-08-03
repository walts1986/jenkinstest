pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'make'
      }
    }

  }
  post {
    always {
      echo 'One way or another, I have finished'
      deleteDir()
      mail(to: 'walt.python@gmail.com', subject: "Failed Pipeline: ${currentBuild.fullDisplayName}", body: "Something is wrong with ${env.BUILD_URL}")
    }

    success {
      echo 'I succeeeded!'
    }

    unstable {
      echo 'I am unstable :/'
    }

    failure {
      echo 'I failed :('
    }

    changed {
      echo 'Things were different before...'
    }

  }
}
