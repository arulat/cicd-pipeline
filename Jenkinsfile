pipeline {
  agent {
    docker {
      image 'node:18-alpine3.21'
    }

  }
  stages {
    stage('Build Image') {
      steps {
        sh 'docker -v'
      }
    }

  }
  tools {
    nodejs '23.5.0'
  }
}