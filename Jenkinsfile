pipeline {
  agent any
  stages {
    stage('Build Image') {
      agent {
        docker {
          image 'node:18-alpine3.21'
        }

      }
      steps {
        sh 'docker --version'
      }
    }

  }
  tools {
    nodejs '23.5.0'
  }
}