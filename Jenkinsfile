pipeline {
  agent {
    docker {
      image 'node:16-alpine'
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