pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'echo \'success\''
      }
    }

    stage('Build') {
      steps {
        nodejs('node') {
          sh 'echo \'success\''
        }

      }
    }

    stage('Tests') {
      agent any
      steps {
        nodejs('node') {
          sh 'echo \'success\''
        }

      }
    }

    stage('Build Image') {
      steps {
        script {
          docker.build cicd-app:test
        }
      }
    }

  }
  tools {
    nodejs 'node'
  }
}
