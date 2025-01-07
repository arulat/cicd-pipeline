pipeline {
  agent any
  stages {
    stage('Test Docker') {
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
}