pipeline {
  agent none
  stages {
    stage('Build Image') {
      agent {
        docker {
          image 'node:16-alpine'
        }

      }
      steps {
        sh 'docker -v'
      }
    }

  }
  tools {
    nodejs '23.5.0'
  }
}